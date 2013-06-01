package hif
{
   import flash.display.Sprite;
   import flash.display.Shape;
   import movimet.Lufub;
   import nec.Sire;
   import nec.AppendingLineBuilder;
   import flash.display.Bitmap;
   import coh.Qewitu;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import qucuqesif.Rasoqymi;


   public class Poga extends Sprite
   {
      public function Poga() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fife=Rasoqymi.paleqivy(46,5526612,0,false,true);
         this.vedi=Rasoqymi.paleqivy(40,5526612,3,false,true);
         this.bg=Rasoqymi.paleqivy(46,5526612,0,true,false);
         this.qazuny=Rasoqymi.vames();
         this.baripag=new Sire();
         this.gusemepa=Rasoqymi.ceriw(16777103,100);
         this.jil=new AppendingLineBuilder();
         this.cyjop=new Sprite();
         this.caw=new Bitmap();
         super();
         this.qohinep();
         this.gusemepa.textChanged.add(this.kubuponu);
         this.qazuny.textChanged.add(this.kubuponu);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var fife:Shape;

      private var vedi:Shape;

      private var bg:Shape;

      private var qazuny:Lufub;

      private var baripag:Sire;

      private var gusemepa:Lufub;

      private var jil:AppendingLineBuilder;

      protected var cyjop:Sprite;

      protected var caw:Bitmap;

      protected var danyz:Qewitu;

      protected var itemId:int = -1;

      public function setTitle(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.baripag.setParams(param1,param2);
         this.qazuny.setStringBuilder(this.baripag);
         return;
      }

      public function hak(param1:String, param2:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jil.clear();
         this.jil.pushParams(param1,param2);
         this.gusemepa.setStringBuilder(this.jil);
         return;
      }

      public function jurubiq(param1:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.fife.visible=!param1;
         var _loc2_:int = param1?40:46;
         var _loc3_:int = param1?3:0;
         this.bg.graphics.clear();
         this.bg.graphics.beginFill(4605510);
         this.bg.graphics.drawRoundRect(0,_loc3_,_loc2_,_loc2_,16,16);
         this.bg.x=(100-_loc2_)*0.5;
         return;
      }

      public function kyfefak(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = this.vedi.transform.colorTransform;
         _loc2_.color=param1?16777103:5526612;
         this.vedi.transform.colorTransform=_loc2_;
         return;
      }

      protected function bunydomed() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cyjop.x=0;
         this.cyjop.y=0;
         this.caw.x=(100-this.caw.width)*0.5;
         this.caw.y=(46-this.caw.height)*0.5;
         return;
      }

      protected function kozyqi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.danyz.x=(100-this.danyz.width)*0.5;
         this.danyz.y=(46-this.danyz.height)*0.5;
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.gusemepa.textChanged.remove(this.kubuponu);
         this.qazuny.textChanged.remove(this.kubuponu);
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cyjop.addChild(this.caw);
         addChild(this.bg);
         addChild(this.vedi);
         addChild(this.fife);
         addChild(this.qazuny);
         addChild(this.gusemepa);
         addChild(this.cyjop);
         return;
      }

      private function kubuponu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gusemepa.y=this.qazuny.y+this.qazuny.height-1;
         return;
      }
   }

}