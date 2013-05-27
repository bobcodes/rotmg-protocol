package gib
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;
   import nec.Zirewe;
   import flash.events.MouseEvent;
   import nec.Nara;
   import flash.display.Graphics;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Bumajugel extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Bumajugel(param1:String, param2:Boolean, param3:uint=16) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.mozepuke=param2;
         this.pil=new Sprite();
         this.pil.x=2;
         this.pil.y=2;
         this.megopy();
         this.pil.addEventListener(MouseEvent.CLICK,this.zeg);
         addChild(this.pil);
         this.text_=new Lufub().setSize(param3).setColor(11776947);
         this.text_.setTextWidth(243);
         this.text_.x=this.pil.x+mifymis+8;
         this.text_.setBold(true);
         this.text_.setMultiLine(true);
         this.text_.setWordWrap(true);
         this.text_.setHTML(true);
         this.text_.setStringBuilder(new Sire().setParams(param1));
         this.text_.mouseEnabled=true;
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text_);
         this.errorText_=new Lufub().setSize(12).setColor(16549442);
         this.errorText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.errorText_);
         this.text_.textChanged.addOnce(this.onTextChanged);
         return;
      }

      private static const mifymis:int = 20;

      public var pil:Sprite;

      public var text_:Lufub;

      public var errorText_:Lufub;

      private var mozepuke:Boolean;

      private var qulab:Boolean;

      public function luwesev() : Boolean {
         return this.mozepuke;
      }

      public function hivuma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.errorText_.setStringBuilder(new Sire().setParams(param1));
         return;
      }

      public function pemen(param1:Zirewe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errorText_.setStringBuilder(new Nara(""));
         this.mozepuke=!this.mozepuke;
         this.megopy();
         return;
      }

      public function pimaq(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qulab=param1;
         this.megopy();
         return;
      }

      private function megopy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         var _loc1_:Graphics = this.pil.graphics;
         _loc1_.clear();
         _loc1_.beginFill(3355443,1);
         _loc1_.drawRect(0,0,mifymis,mifymis);
         _loc1_.endFill();
         if(this.mozepuke)
         {
            _loc1_.lineStyle(4,11776947,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
            _loc1_.moveTo(2,2);
            _loc1_.lineTo(mifymis-2,mifymis-2);
            _loc1_.moveTo(2,mifymis-2);
            _loc1_.lineTo(mifymis-2,2);
            _loc1_.lineStyle();
            this.qulab=false;
         }
         if(this.qulab)
         {
            _loc2_=16549442;
         }
         else
         {
            _loc2_=4539717;
         }
         _loc1_.lineStyle(2,_loc2_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         _loc1_.drawRect(0,0,mifymis,mifymis);
         _loc1_.lineStyle();
         return;
      }
   }

}