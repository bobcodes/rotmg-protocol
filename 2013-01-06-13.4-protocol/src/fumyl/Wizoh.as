package fumyl
{
[CLASS839]   import flash.display.Sprite;
   import pudev.Capitu;
   import tinava.Dab;
   import flash.filters.DropShadowFilter;
   import totuhare.Zufi;
   import haqakel.Kefyfa;


   public class Wizoh extends Sprite
   {
      public function Wizoh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dogomulal=Las;
         super();
         return;
      }

      private var dogomulal:Class;

      private const gujuwite:Capitu = this.makeText();

      private const sisule = this.motohu();

      public const robedihej:Dab = new Dab();

      private function makeText() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu().setSize(16).setColor(11776947).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.setStringBuilder(new Zufi().setParams(Kefyfa.tale));
         _loc1_.textChanged.addOnce(this.layout);
         addChild(_loc1_);
         return _loc1_;
      }

      private function motohu() : * {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = new this.dogomulal();
         addChild(_loc1_);
         return _loc1_;
      }

      public function layout() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gujuwite.y=height/2-this.gujuwite.height/2+1;
         this.sisule.x=this.gujuwite.x+this.gujuwite.width;
         this.robedihej.dispatch();
         return;
      }
   }
[/CLASS]
}