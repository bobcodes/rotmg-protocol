package haqakel
{
[CLASS330]   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.Font;


   public class Cuku extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cuku() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         Font.registerFont(MyriadPro);
         Font.registerFont(MyriadPro_Bold);
         var _loc1_:Font = new MyriadPro();
         this.fenobolo=new Superazi();
         this.fenobolo.setName(_loc1_.fontName);
         return;
      }

      public static const MyriadPro:Class = Suzab;

      public static const MyriadPro_Bold:Class = Juka;

      private var fenobolo:Superazi;

      public function detahaf() : Superazi {
         return this.fenobolo;
      }

      public function apply(param1:TextField, param2:int, param3:uint, param4:Boolean) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:TextFormat = param1.defaultTextFormat;
         _loc5_.size=param2;
         _loc5_.color=param3;
         _loc5_.font=this.detahaf().getName();
         _loc5_.bold=param4;
         param1.defaultTextFormat=_loc5_;
         param1.setTextFormat(_loc5_);
         return;
      }
   }
[/CLASS]
}