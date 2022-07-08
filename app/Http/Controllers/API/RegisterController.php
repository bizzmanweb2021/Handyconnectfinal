<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Exception;
use Log;
use Illuminate\Support\Facades\Mail;
use App\Mail\sendEmail;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;

class RegisterController extends Controller
{

    
    public $successStatus = 200;

    public function register(Request $request)
    {
        // echo"<pre>"; print_r($request->all()); exit();
       $validator = Validator::make($request->all(),[
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'confirmed'],
        ]);
       if($validator->fails()) { 
            return response()->json(["Status Code" => 400 ,"Message"=>"Invalid user Details", "error"=>$validator->errors()], 401);            
        }
       
        $input = $request->all(); 
        $input['password'] = Hash::make($input['password']); 
        $user = User::create($input); 
        $success['token'] =  $user->createToken('myApp')-> accessToken; 
        $success['id'] =  $user->id;
        $success['name'] =  $user->name;
        $success['email'] =  $user->email;
        
        if($success){
            return response()->json(["Success Code" => 200 ,"Message"=>"Registration successfully","Data"=>$success], $this-> successStatus); 
        }
        else{
            return response()->json(["Error Code" => 401 ,"Message"=>"Unauthorised"], $this-> errorStatus); 
        }
    }

  public function login(){ 
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){ 

            $user = Auth::user(); 
            $success['status'] = 200;
            $success['credentials'] = $user;
            $success['token'] =  $user->createToken('MyApp')-> accessToken; 
            return response()->json(["Success Code" => 200 ,"Message"=>"Login successfully","Data"=>$success], $this-> successStatus); 
            }

            else{
            return response()->json(["Success Code" => 400 ,"Message"=>"Unauthorised Or User Details not Valid"], $this-> errorStatus); 
            } 

    }
    public function logout (Request $request) {
   
        if (Auth::check()) {
                Auth::user()->AauthAcessToken()->delete();
              
        return response()->json(["Success Code" => 200 ,"Message"=>"You have been successfully logged out!"], 200);
        }
        else{

        return response()->json(["Success Code" => 400 ,"Message"=>"Unauthorised Or User Details not Valid"], $this-> errorStatus); 
        }

    }

    public function ForgotPasswordlink(Request $request) {
        
        $validator = Validator::make($request->all(),[
            'email' => ['required', 'string', 'email', 'max:255', 'exists:users'],
        ]);
        if($validator->fails()) { 
            return response()->json(["Status Code" => 400 ,"Message"=>"Invalid user Details", "error"=>$validator->errors()], 401);            
        }
        $token = Str::random(64);
        DB::table('password_resets')->insert([
            'email' => $request->email,
            'token' => $token,
         ]);

         $success = Mail::send('auth.forget-password-email', ['token' => $token], function($message) use($request){
            $message->to($request->email);
            $message->from(env('MAIL_FROM_ADDRESS'), env('APP_NAME'));
            $message->subject('Reset Password');
        });

        return response()->json(["Success Code" => 200 ,"Message"=>"We have emailed your password reset link!"], $this-> successStatus); 
            
    }


     public function ResetPassword($token) {

        return response()->json(["Success Code" => 200 ,"Message"=>"You have been successfully Generate Token for Reset Password!","token" => $token],$this-> successStatus);

    }

    public function ResetPasswordStore(Request $request) {
        $request->validate([
            'email' => 'required|email|exists:users',
            'password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required'
        ]);

        $update = DB::table('users')->where(['email' => $request->email, 'token' => $request->token])->first();

        if(!$update){
            return back()->withInput()->with('error', 'Invalid token!');
        }

        $user = User::where('email', $request->email)->update(['password' => Hash::make($request->password)]);

        // Delete password_resets record
        $updatepass = DB::table('users')->where(['email'=> $request->email])->delete();
        if($updatepass){

        return response()->json(["Success Code" => 200 ,"Message"=>"Your password has been successfully changed!","Data"=>$success], $this-> successStatus); 
        }
        else{
            return response()->json(["Error Code" => 401 ,"Message"=>"Unauthorised"], $this-> errorStatus);  
        }

    }
}

