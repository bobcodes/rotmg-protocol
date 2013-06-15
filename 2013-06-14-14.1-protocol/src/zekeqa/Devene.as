package zekeqa
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import jediwip.Tunyhazo;
   import flash.events.MouseEvent;
   import jediwip.Vofezuzy;
   import flash.display.Graphics;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Devene extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Devene(param1:String, param2:Boolean, param3:uint=16) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.hovapas=param2;
         this.pugazu=new Sprite();
         this.pugazu.x=2;
         this.pugazu.y=2;
         this.jed();
         this.pugazu.addEventListener(MouseEvent.CLICK,this.zug);
         addChild(this.pugazu);
         this.text_=new Guzowoja().setSize(param3).setColor(11776947);
         this.text_.setTextWidth(243);
         this.text_.x=this.pugazu.x+cucorafif+8;
         this.text_.setBold(true);
         this.text_.setMultiLine(true);
         this.text_.setWordWrap(true);
         this.text_.setHTML(true);
         this.text_.setStringBuilder(new Kybidu().setParams(param1));
         this.text_.mouseEnabled=true;
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text_);
         this.errorText_=new Guzowoja().setSize(12).setColor(16549442);
         this.errorText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.errorText_);
         this.text_.textChanged.addOnce(this.onTextChanged);
         return;
      }

      private static const cucorafif:int = 20;

      public var pugazu:Sprite;

      public var text_:Guzowoja;

      public var errorText_:Guzowoja;

      private var hovapas:Boolean;

      private var bibyzyw:Boolean;

      public function lywyfiro() : Boolean {
         return this.hovapas;
      }

      public function nirin(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.errorText_.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }

      public function qataqybyp(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setStringBuilder(param1);
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.errorText_.x=this.text_.x;
         this.errorText_.y=this.text_.y+20;
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.errorText_.setStringBuilder(new Vofezuzy(""));
         this.hovapas=!this.hovapas;
         this.jed();
         return;
      }

      public function nis(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bibyzyw=param1;
         this.jed();
         return;
      }

      private function jed() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         var _loc1_:Graphics = this.pugazu.graphics;
         _loc1_.clear();
         _loc1_.beginFill(3355443,1);
         _loc1_.drawRect(0,0,cucorafif,cucorafif);
         _loc1_.endFill();
         if(this.hovapas)
         {
            _loc1_.lineStyle(4,11776947,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
            _loc1_.moveTo(2,2);
            _loc1_.lineTo(cucorafif-2,cucorafif-2);
            _loc1_.moveTo(2,cucorafif-2);
            _loc1_.lineTo(cucorafif-2,2);
            _loc1_.lineStyle();
            this.bibyzyw=false;
         }
         if(this.bibyzyw)
         {
            _loc2_=16549442;
         }
         else
         {
            _loc2_=4539717;
         }
         _loc1_.lineStyle(2,_loc2_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         _loc1_.drawRect(0,0,cucorafif,cucorafif);
         _loc1_.lineStyle();
         return;
      }
   }

}