package com.google.analytics.utils
{
   import flash.system.System;
   import com.google.analytics.core.Utils;
   import flash.system.Capabilities;


   public class UserAgent extends Object
   {
      public function UserAgent(param1:Environment, param2:String="", param3:String="") {
         super();
         _localInfo=param1;
         applicationProduct=param2;
         _version=Version.fromString(param3);
         return;
      }

      public static var minimal:Boolean = false;

      public function get tamarinProductToken() : String {
         if(UserAgent.minimal)
         {
            return "";
         }
         if(System.vmVersion)
         {
            return "Tamarin/"+Utils.trim(System.vmVersion,true);
         }
         return "";
      }

      private var _localInfo:Environment;

      private var _applicationProduct:String;

      public function get applicationVersion() : String {
         return _version.toString(2);
      }

      public function get vendorProductToken() : String {
         var _loc1_:* = "";
         if(_localInfo.isAIR())
         {
            _loc1_=_loc1_+"AIR";
         }
         else
         {
            _loc1_=_loc1_+"FlashPlayer";
         }
         _loc1_=_loc1_+"/";
         _loc1_=_loc1_+_version.toString(3);
         return _loc1_;
      }

      public function toString() : String {
         var _loc1_:* = "";
         _loc1_=_loc1_+applicationProductToken;
         if(applicationComment!="")
         {
            _loc1_=_loc1_+(" "+applicationComment);
         }
         if(tamarinProductToken!="")
         {
            _loc1_=_loc1_+(" "+tamarinProductToken);
         }
         if(vendorProductToken!="")
         {
            _loc1_=_loc1_+(" "+vendorProductToken);
         }
         return _loc1_;
      }

      public function get applicationComment() : String {
         var [OFS6]_loc1_:Array = [/OFS][OFS2][[/OFS][OFS2]][/OFS];
         [OFS7]_loc1_[/OFS].[OFS14]push[/OFS][OFS14]([/OFS][OFS8]_localInfo[/OFS].[OFS11]platform[/OFS][OFS14])[/OFS];
         [OFS17]_loc1_[/OFS].[OFS24]push[/OFS][OFS24]([/OFS][OFS18]_localInfo[/OFS].[OFS21]playerType[/OFS][OFS24])[/OFS];
         if(![OFS27]UserAgent[/OFS].[OFS30]minimal[/OFS])
         {
            [OFS37]_loc1_[/OFS].[OFS44]push[/OFS][OFS44]([/OFS][OFS38]_localInfo[/OFS].[OFS41]operatingSystem[/OFS][OFS44])[/OFS];
            [OFS47]_loc1_[/OFS].[OFS54]push[/OFS][OFS54]([/OFS][OFS48]_localInfo[/OFS].[OFS51]language[/OFS][OFS54])[/OFS];
         }
         if([OFS57]Capabilities[/OFS].[OFS60]isDebugger[/OFS])
         {
            [OFS68]_loc1_[/OFS].[OFS72]push[/OFS][OFS72]([/OFS][OFS69]"DEBUG"[/OFS][OFS72])[/OFS];
         }
         if([OFS75]_loc1_[/OFS].[OFS76]length[/OFS][OFS80]>[/OFS][OFS78]0[/OFS])
         {
            [OFS101]return [/OFS][OFS84]"("[/OFS][OFS96]+[/OFS][OFS87]_loc1_[/OFS].[OFS92]join[/OFS][OFS92]([/OFS][OFS88]"; "[/OFS][OFS92])[/OFS][OFS100]+[/OFS][OFS97]")"[/OFS];
         }
         [OFS104]return [/OFS][OFS102]""[/OFS];
      }

      public function set applicationVersion(param1:String) : void {
         _version=Version.fromString(param1);
         return;
      }

      private var _version:Version;

      public function get applicationProductToken() : String {
         var _loc1_:String = applicationProduct;
         if(applicationVersion!="")
         {
            _loc1_=_loc1_+("/"+applicationVersion);
         }
         return _loc1_;
      }

      public function set applicationProduct(param1:String) : void {
         _applicationProduct=param1;
         return;
      }

      public function get applicationProduct() : String {
         return _applicationProduct;
      }
   }

}