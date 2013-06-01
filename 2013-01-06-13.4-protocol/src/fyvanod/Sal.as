package fyvanod
{
[CLASS1544]   import flash.display.Sprite;
   import viky.Wihury;
   import jat.Waby;
   import viky.Hoselyfov;
   import flash.display.Bitmap;
   import qypupet.Vuravipyg;
   import flash.geom.ColorTransform;
   import flash.events.Event;
   import dutes.Zevazogo;
   import dutes.Soz;


   public class Sal extends Sprite implements Wihury, Waby
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sal(param1:Vuravipyg) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys=new Hoselyfov();
         super();
         this.petVO=param1;
         this.tuhucysys.mosajo(this);
         this.tuhucysys.tooltip=new Zyzevy(param1);
         return;
      }

      public static const vidid:uint = 2697513;

      public var tuhucysys:Hoselyfov;

      private var nyjipamy:Bitmap;

      private var enabled:Boolean = true;

      private var petVO:Vuravipyg;

      public function disable() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.color=vidid;
         this.nyjipamy.transform.colorTransform=_loc1_;
         this.enabled=false;
         return;
      }

      public function isEnabled() : Boolean {
         return this.enabled;
      }

      override public function dispatchEvent(param1:Event) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.enabled)
         {
            return super.dispatchEvent(param1);
         }
         return false;
      }

      public function vegame(param1:Bitmap) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nyjipamy=param1;
         addChild(param1);
         return;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }

      public function getPetVO() : Vuravipyg {
         return this.petVO;
      }
   }
[/CLASS]
}