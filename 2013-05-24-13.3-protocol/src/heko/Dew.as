package heko
{
   import flash.text.TextField;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;


   public class Dew extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const nycu:Number = 200;

      private static const molajoz:Number = 2;

      protected var name:String;

      private var textColor:uint = 0;

      private var pajyfuhoz:Number;

      private var lunidy:Number;

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.poso();
         return;
      }

      public function getName() : String {
         return this.name;
      }

      public function gene(param1:Number) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.pajyfuhoz*param1;
      }

      public function sibitys(param1:Number) : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.lunidy*param1;
      }

      private function poso() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:TextField = this.honeg();
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height);
         _loc2_.draw(_loc1_);
         var _loc3_:uint = 16777215;
         var _loc4_:Rectangle = _loc2_.getColorBoundsRect(_loc3_,this.textColor,true);
         this.pajyfuhoz=this.gehi(_loc4_.height);
         this.lunidy=this.gehi(_loc1_.height-_loc4_.bottom-molajoz);
         return;
      }

      private function honeg() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextField = new TextField();
         _loc1_.autoSize=TextFieldAutoSize.LEFT;
         _loc1_.text="x";
         _loc1_.textColor=this.textColor;
         _loc1_.setTextFormat(new TextFormat(this.name,nycu));
         return _loc1_;
      }

      private function gehi(param1:Number) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1/nycu;
      }
   }

}