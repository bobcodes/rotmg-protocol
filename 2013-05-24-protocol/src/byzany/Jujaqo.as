package byzany
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;


   public class Jujaqo extends Object implements Qopel
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jujaqo() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vub=this.livo();
         super();
         try
         {
            this.gyfa=SharedObject.getLocal("RotMG","/");
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const viluzyd:String = "en";

      private var gyfa:SharedObject;

      private var language:String;

      private var vub:Dictionary;

      public function liw() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.language=(this.language)||(this.cebefawan());
      }

      private function cebefawan() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.gyfa.data.locale)||(viluzyd);
      }

      public function lapy(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.language=param1;
         try
         {
            this.gyfa.data.locale=param1;
            this.gyfa.flush();
         }
         catch(error:Error)
         {
         }
         return;
      }

      public function hymaceli() : String {
         return this.liw().substr(0,2).toLowerCase();
      }

      public function symydogij() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for (_loc2_ in this.vub)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }

      public function lubuvyn(param1:String) : String {
         return this.vub[param1];
      }

      public function mubis(param1:String) : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         for (_loc3_ in this.vub)
         {
            if(this.vub[_loc3_]==param1)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      private function livo() : Dictionary {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_["Languages.English"]="en";
         _loc1_["Languages.French"]="fr";
         _loc1_["Languages.Spanish"]="es";
         _loc1_["Languages.Italian"]="it";
         _loc1_["Languages.German"]="de";
         _loc1_["Languages.Turkish"]="tr";
         _loc1_["Languages.Russian"]="ru";
         return _loc1_;
      }
   }

}