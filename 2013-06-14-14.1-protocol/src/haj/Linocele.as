package haj
{
   import flash.display.Sprite;
   import gafuvy.Pywafejer;
   import racitagy.Kes;
   import gafuvy.Qyvuw;
   import flash.display.Bitmap;
   import fanij.Cun;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;


   public class Linocele extends Sprite implements Pywafejer, Kes
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Linocele(param1:Cun) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop=new Qyvuw();
         super();
         this.petVO=param1;
         this.debamipop.lubec(this);
         this.debamipop.tooltip=new Cihoni(param1);
         return;
      }

      public static const kihiwovor:uint = 2697513;

      public var debamipop:Qyvuw;

      private var vuc:Bitmap;

      private var enabled:Boolean = true;

      private var petVO:Cun;

      public function disable() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.color=kihiwovor;
         this.vuc.transform.colorTransform=_loc1_;
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

      public function cavatak(param1:Bitmap) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vuc=param1;
         addChild(param1);
         return;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.debamipop.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.debamipop.wuducocac();
      }

      public function getPetVO() : Cun {
         return this.petVO;
      }
   }

}