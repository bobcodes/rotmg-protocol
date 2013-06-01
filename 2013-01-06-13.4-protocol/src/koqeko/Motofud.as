package koqeko
{
[CLASS89]   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;


   public class Motofud extends Object implements Vona
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Motofud() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tabo=this.zyn();
         super();
         try
         {
            this.cumevo=SharedObject.getLocal("RotMG","/");
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const hih:String = "en";

      private var cumevo:SharedObject;

      private var language:String;

      private var tabo:Dictionary;

      public function bebukir() : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.language=(this.language)||(this.dihysiqot());
      }

      private function dihysiqot() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.cumevo.data.locale)||(hih);
      }

      public function myra(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.language=param1;
         try
         {
            this.cumevo.data.locale=param1;
            this.cumevo.flush();
         }
         catch(error:Error)
         {
         }
         return;
      }

      public function tovide() : String {
         return this.bebukir().substr(0,2).toLowerCase();
      }

      public function fod() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for (_loc2_ in this.tabo)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }

      public function fudav(param1:String) : String {
         return this.tabo[param1];
      }

      public function cuferoju(param1:String) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         for (_loc3_ in this.tabo)
         {
            if(this.tabo[_loc3_]==param1)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      private function zyn() : Dictionary {
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
[/CLASS]
}