package komi
{
   import flash.text.TextField;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;


   public class Meq extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Meq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const qyjago:Number = 200;

      private static const qojicag:Number = 2;

      protected var name:String;

      private var textColor:uint = 0;

      private var guvotyz:Number;

      private var zuk:Number;

      public function setName(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.name=param1;
         this.heticuzomy();
         return;
      }

      public function getName() : String {
         return this.name;
      }

      public function miliguton(param1:Number) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.guvotyz*param1;
      }

      public function fozuw(param1:Number) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.zuk*param1;
      }

      private function heticuzomy() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:TextField = this.kyjozysac();
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height);
         _loc2_.draw(_loc1_);
         var _loc3_:uint = 16777215;
         var _loc4_:Rectangle = _loc2_.getColorBoundsRect(_loc3_,this.textColor,true);
         this.guvotyz=this.melema(_loc4_.height);
         this.zuk=this.melema(_loc1_.height-_loc4_.bottom-qojicag);
         return;
      }

      private function kyjozysac() : TextField {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:TextField = new TextField();
         _loc1_.autoSize=TextFieldAutoSize.LEFT;
         _loc1_.text="x";
         _loc1_.textColor=this.textColor;
         _loc1_.setTextFormat(new TextFormat(this.name,qyjago));
         return _loc1_;
      }

      private function melema(param1:Number) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return param1/qyjago;
      }
   }

}