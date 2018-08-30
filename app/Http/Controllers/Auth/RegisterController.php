<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/admin';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'id_estado' => $data['id_estado'],
            'id_municipio' => $data['id_municipio'],
            'id_parroquia' => $data['id_parroquia'],
        ]);
    }

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showRegistrationForm()
    {
        $state = DB::table('states')
                        ->orderBy('estado','asc')
                        ->get();
        return view('auth.register')->with(compact('state'));
    }

    /** 
     * Ajax for estado, municipio
    */
    public function fetchAddress(Request $request){
        $id = $request->get('id');
        $value = $request->get('value');
        $child = $request->get('dependent');
        $table_name = 'municipios';
        $field_name = 'municipio';
        if($child == 'id_parroquia'){
            $table_name = 'parroquias';
            $field_name = 'parroquia';
        }

        $data = DB::table($table_name)
            ->where($id,$value)
            ->orderBy($field_name,'asc')
            ->get();
        $output = '<option value="">Selecciona '.$field_name.' </option>';
        foreach($data as $row)
        {
            $output .= '<option value="'.$row->id.'">'.$row->$field_name.'</option>';
        }
        echo $output;

    }
}
