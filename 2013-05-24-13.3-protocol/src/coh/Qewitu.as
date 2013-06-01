package coh
{
   import flash.display.Sprite;
   import tekoh.Gemanyq;
   import fidymu.Lybulihu;
   import tekoh.Zukot;
   import flash.display.Bitmap;
   import zoroc.Bezuco;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import raqu.Hujuhy;
   import raqu.Goq;


   public class Qewitu extends Sprite implements Gemanyq, Lybulihu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Qewitu(param1:Bezuco) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw=new Zukot();
         super();
         this.petVO=param1;
         this.piwawawiw.kol(this);
         this.piwawawiw.tooltip=new Cum(param1);
         return;
      }

      public static const juq:uint = 2697513;

      public var piwawawiw:Zukot;

      private var fod:Bitmap;

      private var enabled:Boolean = true;

      private var petVO:Bezuco;

      public function disable() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.color=juq;
         this.fod.transform.colorTransform=_loc1_;
         this.enabled=false;
         return;
      }

      public function isEnabled() : Boolean {
         return this.enabled;
      }

      override public function dispatchEvent(param1:Event) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.enabled)
         {
            return super.dispatchEvent(param1);
         }
         return false;
      }

      public function kes(param1:Bitmap) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fod=param1;
         addChild(param1);
         return;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwawawiw.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.piwawawiw.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwawawiw.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.piwawawiw.wab();
      }

      public function getPetVO() : Bezuco {
         return this.petVO;
      }
   }

}