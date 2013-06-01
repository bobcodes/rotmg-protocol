package haqakel
{
[CLASS982]   import flash.text.TextField;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;


   public class Superazi extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Superazi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const logyw:Number = 200;

      private static const gizawiw:Number = 2;

      protected var name:String;

      private var textColor:uint = 0;

      private var nymi:Number;

      private var zafabocez:Number;

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.dolezyr();
         return;
      }

      public function getName() : String {
         return this.name;
      }

      public function bowad(param1:Number) : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.nymi*param1;
      }

      public function jizugij(param1:Number) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.zafabocez*param1;
      }

      private function dolezyr() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:TextField = this.cyholule();
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height);
         _loc2_.draw(_loc1_);
         var _loc3_:uint = 16777215;
         var _loc4_:Rectangle = _loc2_.getColorBoundsRect(_loc3_,this.textColor,true);
         this.nymi=this.devysi(_loc4_.height);
         this.zafabocez=this.devysi(_loc1_.height-_loc4_.bottom-gizawiw);
         return;
      }

      private function cyholule() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextField = new TextField();
         _loc1_.autoSize=TextFieldAutoSize.LEFT;
         _loc1_.text="x";
         _loc1_.textColor=this.textColor;
         _loc1_.setTextFormat(new TextFormat(this.name,logyw));
         return _loc1_;
      }

      private function devysi(param1:Number) : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return param1/logyw;
      }
   }
[/CLASS]
}