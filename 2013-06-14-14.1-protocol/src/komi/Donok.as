package komi
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.Font;


   public class Donok extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Donok() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         Font.registerFont(MyriadPro);
         Font.registerFont(MyriadPro_Bold);
         var _loc1_:Font = new MyriadPro();
         this.beza=new Meq();
         this.beza.setName(_loc1_.fontName);
         return;
      }

      public static const MyriadPro:Class = Cud;

      public static const MyriadPro_Bold:Class = Roc;

      private var beza:Meq;

      public function jawiqaheq() : Meq {
         return this.beza;
      }

      public function apply(param1:TextField, param2:int, param3:uint, param4:Boolean) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:TextFormat = param1.defaultTextFormat;
         _loc5_.size=param2;
         _loc5_.color=param3;
         _loc5_.font=this.jawiqaheq().getName();
         _loc5_.bold=param4;
         param1.defaultTextFormat=_loc5_;
         param1.setTextFormat(_loc5_);
         return;
      }
   }

}