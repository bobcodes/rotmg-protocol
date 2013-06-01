package nonyna
{
[CLASS1076]   import flash.display.Sprite;
   import pudev.Capitu;
   import totuhare.Zufi;
   import totuhare.Qebar;
   import flash.events.MouseEvent;
   import totuhare.Javo;
   import flash.display.Graphics;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Rutugumen extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rutugumen(param1:String, param2:Boolean, param3:uint=16) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.zuvores=param2;
         this.sofoz=new Sprite();
         this.sofoz.x=2;
         this.sofoz.y=2;
         this.huz();
         this.sofoz.addEventListener(MouseEvent.CLICK,this.nonolypyr);
         addChild(this.sofoz);
         this.text_=new Capitu().setSize(param3).setColor(11776947);
         this.text_.setTextWidth(243);
         this.text_.x=this.sofoz.x+dyb+8;
         this.text_.setBold(true);
         this.text_.setMultiLine(true);
         this.text_.setWordWrap(true);
         this.text_.setHTML(true);
         this.text_.setStringBuilder(new Zufi().setParams(param1));
         this.text_.mouseEnabled=true;
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text_);
         this.errorText_=new Capitu().setSize(12).setColor(16549442);
         this.errorText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.errorText_);
         this.text_.textChanged.addOnce(this.onTextChanged);
         return;
      }

      private static const dyb:int = 20;

      public var sofoz:Sprite;

      public var text_:Capitu;

      public var errorText_:Capitu;

      private var zuvores:Boolean;

      private var lemohuc:Boolean;

      public function wys() : Boolean {
         return this.zuvores;
      }

      public function famugujo(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errorText_.setStringBuilder(new Zufi().setParams(param1));
         return;
      }

      public function momiwol(param1:Qebar) : void {
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

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errorText_.setStringBuilder(new Javo(""));
         this.zuvores=!this.zuvores;
         this.huz();
         return;
      }

      public function mibaqe(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lemohuc=param1;
         this.huz();
         return;
      }

      private function huz() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         var _loc1_:Graphics = this.sofoz.graphics;
         _loc1_.clear();
         _loc1_.beginFill(3355443,1);
         _loc1_.drawRect(0,0,dyb,dyb);
         _loc1_.endFill();
         if(this.zuvores)
         {
            _loc1_.lineStyle(4,11776947,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
            _loc1_.moveTo(2,2);
            _loc1_.lineTo(dyb-2,dyb-2);
            _loc1_.moveTo(2,dyb-2);
            _loc1_.lineTo(dyb-2,2);
            _loc1_.lineStyle();
            this.lemohuc=false;
         }
         if(this.lemohuc)
         {
            _loc2_=16549442;
         }
         else
         {
            _loc2_=4539717;
         }
         _loc1_.lineStyle(2,_loc2_,1,false,LineScaleMode.NORMAL,CapsStyle.ROUND,JointStyle.ROUND);
         _loc1_.drawRect(0,0,dyb,dyb);
         _loc1_.lineStyle();
         return;
      }
   }
[/CLASS]
}