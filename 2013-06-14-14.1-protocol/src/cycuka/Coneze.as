package cycuka
{
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   import __AS3__.vec.Vector;


   public class Coneze extends Object implements Voli
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Coneze() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qujeseqal=this.hoqaj();
         super();
         try
         {
            this.delazob=SharedObject.getLocal("RotMG","/");
         }
         catch(error:Error)
         {
         }
         return;
      }

      public static const kukeryra:String = "en";

      private var delazob:SharedObject;

      private var language:String;

      private var qujeseqal:Dictionary;

      public function hohizo() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.language=(this.language)||(this.siqyjek());
      }

      private function siqyjek() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.delazob.data.locale)||(kukeryra);
      }

      public function folocibe(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.language=param1;
         try
         {
            this.delazob.data.locale=param1;
            this.delazob.flush();
         }
         catch(error:Error)
         {
         }
         return;
      }

      public function ropyra() : String {
         return this.hohizo().substr(0,2).toLowerCase();
      }

      public function rih() : Vector.<String> {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for (_loc2_ in this.qujeseqal)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }

      public function ceqetiteq(param1:String) : String {
         return this.qujeseqal[param1];
      }

      public function wapami(param1:String) : String {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:String = null;
         for (_loc3_ in this.qujeseqal)
         {
            if(this.qujeseqal[_loc3_]==param1)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      private function hoqaj() : Dictionary {
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