<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Setting;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;

class AdminSettingController extends Controller
{
    public function edit()
    {
        $var = new Setting();
        $setting = $var->getSetting();
        return view('admin.setting.edit',compact('setting'));
    }


    public function update(Request $request)
    {
        $setting = Setting::find(1);
       
        $setting->regret = $request->input('regret');
        $setting->thank = $request->input('thank');
		//$setting->update();
        if ($setting->update()) {
            //$request->session()->flash('alert-success', __('Setting has been Edited'));
            Session::flash('message','Setting has been Edited');
            return redirect('admin/setting');
        } else {

            Session::flash('message','Setting Not Edited !!');
            return redirect('admin/setting');
        }

    }
}
