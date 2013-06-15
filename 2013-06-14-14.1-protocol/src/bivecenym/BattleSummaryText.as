package bivecenym
{
   import flash.display.Sprite;
   import hivysif.Liwyny;
   import flash.filters.DropShadowFilter;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import jediwip.Vofezuzy;


   public class BattleSummaryText extends Sprite
   {
      public function BattleSummaryText(param1:String, param2:int, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.vef=this.nelegetow();
         this.gigopefo=this.cawilum();
         this.wyjaza=this.cawilum();
         super();
         this.vef.setStringBuilder(new Kybidu().setParams(param1));
         this.gigopefo.setStringBuilder(new Kybidu().setParams(Vibemod.veta,{waveNumber:param2-1}));
         this.wyjaza.setStringBuilder(new Vofezuzy(this.lekupyzocu(param3)));
         this.align();
         return;
      }

      private var vef:Liwyny;

      private var gigopefo:Liwyny;

      private var wyjaza:Liwyny;

      private function align() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vef.x=width/2-this.vef.width/2;
         this.gigopefo.y=this.vef.height+10;
         this.gigopefo.x=width/2-this.gigopefo.width/2;
         this.wyjaza.y=this.gigopefo.y+this.gigopefo.height+5;
         this.wyjaza.x=width/2-this.wyjaza.width/2;
         return;
      }

      private function lekupyzocu(param1:int) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = param1/60;
         var _loc3_:int = param1%60;
         var _loc4_:String = _loc2_<10?"0":"";
         _loc4_=_loc4_+(_loc2_+":");
         _loc4_=_loc4_+(_loc3_<10?"0":"");
         _loc4_=_loc4_+_loc3_;
         return _loc4_;
      }

      private function nelegetow() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = null;
         _loc1_=new Liwyny();
         _loc1_.setSize(16).setBold(true).setColor(16777215);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }

      private function cawilum() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(14).setBold(true).setColor(11776947);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }
   }

}