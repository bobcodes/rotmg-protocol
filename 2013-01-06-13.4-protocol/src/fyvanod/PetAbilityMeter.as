package fyvanod
{
[CLASS934]   import flash.display.Sprite;
   import viky.Wihury;
   import tinava.Dab;
   import pudev.Capitu;
   import viky.Hoselyfov;
   import flash.events.Event;
   import qypupet.Zazeseca;
   import kozaligov.Kitiqu;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import kozaligov.Cinijyt;
   import flash.filters.DropShadowFilter;
   import tidi.Dak;
   import dutes.Zevazogo;
   import dutes.Soz;
   import kozaligov.Bapipe;


   public class PetAbilityMeter extends Sprite implements Wihury
   {
      public function PetAbilityMeter() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wihihula=new Dab();
         this.cufoqi=new Hoselyfov();
         super();
         this.joz.hamaqo.add(this.zasati);
         this.tozibyt();
         this.mipuguc();
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.cufoqi.mosajo(this);
         return;
      }

      public const hamaqo:Dab = new Dab(PetAbilityMeter,Boolean);

      private const hig:Capitu = Bapipe.nopu(11776947,14,true,true);

      private const wyv:Capitu = Bapipe.nopu(11776947,14,true,true);

      private const joz:Tyva = new Tyva(Cinijyt.covibem,Cinijyt.bilojeli);

      private var cupumovup:Boolean = true;

      private var mico:int = 0;

      private var jypykaqu:int = 0;

      private var jamub:Number = 0;

      public var wihihula:Dab;

      public var max:int;

      public var index:int;

      private var cufoqi:Hoselyfov;

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.joz.hamaqo.remove(this.zasati);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public function fej(param1:Zazeseca) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.mico=param1.points;
         this.jypykaqu=param1.level;
         this.vyjahasu(param1.name);
         this.setUnlocked(param1.hem());
         this.wigyhiji(this.cupumovup?param1.level:0);
         this.zasati(false);
         this.cufoqi.tooltip=new Towoq(param1);
         if(this.cupumovup)
         {
            _loc2_=Math.max(0,Kitiqu.bys(param1.points,param1.level));
            _loc3_=Kitiqu.cytyqin(param1.level);
            _loc2_=param1.level>=this.max?_loc3_:_loc2_;
            this.fuzagy(_loc2_,_loc3_);
         }
         param1.magoraqo.add(this.wolyf);
         return;
      }

      private function wolyf(param1:Zazeseca) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         this.setUnlocked(param1.hem());
         if(param1.points>this.mico&&(this.cupumovup))
         {
            this.mico=param1.points;
            this.jamub=Kitiqu.bys(param1.points,this.jypykaqu);
            _loc2_=Kitiqu.cytyqin(this.jypykaqu);
            if(!(_loc2_==0)&&this.jamub>_loc2_)
            {
               this.jamub=this.jamub-_loc2_;
               this.joz.wetuholud.add(this.sicuw);
               this.joz.fill();
               this.zasati(true);
            }
            else
            {
               this.fuzagy(this.jamub,_loc2_);
            }
         }
         return;
      }

      private function sicuw() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = NaN;
         var _loc1_:* = false;
         this.jypykaqu++;
         this.wigyhiji(this.jypykaqu,true);
         _loc2_=Kitiqu.cytyqin(this.jypykaqu);
         if(this.jamub>_loc2_)
         {
            this.joz.reset();
            this.jamub=this.jamub-_loc2_;
            this.joz.fill();
         }
         else
         {
            this.joz.wetuholud.remove(this.sicuw);
            if(this.jypykaqu>=this.max)
            {
               this.joz.tufunesy(null);
               this.jamub=0;
            }
            else
            {
               this.joz.reset();
               this.fuzagy(this.jamub,_loc2_);
            }
         }
         return;
      }

      public function vyjahasu(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wyv.setStringBuilder(new Zufi().setParams(param1));
         return;
      }

      public function wigyhiji(param1:int, param2:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = param1>=this.max?Kefyfa.saqaca:Kefyfa.watavaqa;
         this.hig.setColor(param2?1572859:param1>=this.max?Cinijyt.rozu:11776947);
         this.hig.setStringBuilder(new Zufi().setParams(_loc3_,{level:param1.toString()}));
         this.hig.textChanged.addOnce(this.ryzow);
         return;
      }

      public function fuzagy(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.joz.mitimyw(param2);
         this.joz.ver(param1);
         return;
      }

      public function setUnlocked(param1:Boolean) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         if(this.cupumovup!=param1)
         {
            this.cupumovup=param1;
            _loc2_=param1?11776947:5658198;
            _loc3_=param1?[new DropShadowFilter(0,0,0)]:[];
            this.wyv.setColor(_loc2_);
            this.wyv.filters=_loc3_;
            this.hig.visible=param1;
         }
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.wyv);
         addChild(this.hig);
         addChild(this.joz);
         return;
      }

      private function tozibyt() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dak = new Dak();
         _loc1_.push(this.hig.textChanged);
         _loc1_.push(this.wyv.textChanged);
         _loc1_.complete.addOnce(this.fiqapek);
         return;
      }

      private function ryzow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.joz.y=21;
         this.hig.x=Cinijyt.covibem-this.hig.width;
         return;
      }

      private function fiqapek() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ryzow();
         this.wihihula.dispatch();
         return;
      }

      private function zasati(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hig.setColor(param1?1572859:this.jypykaqu>=this.max?Cinijyt.rozu:11776947);
         this.wyv.setColor(param1?1572859:this.jypykaqu>=100?Cinijyt.rozu:11776947);
         if(!param1&&this.jypykaqu>=100)
         {
            this.joz.cawupaj(Cinijyt.rozu);
         }
         this.hamaqo.dispatch(this,param1);
         return;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cufoqi.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.cufoqi.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cufoqi.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.cufoqi.kodyqigiv();
      }
   }
[/CLASS]
}