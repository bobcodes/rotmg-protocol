package haj
{
   import flash.display.Sprite;
   import gafuvy.Pywafejer;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import gafuvy.Qyvuw;
   import flash.events.Event;
   import fanij.Kyruha;
   import fypeba.Kanej;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import fypeba.Rikuko;
   import flash.filters.DropShadowFilter;
   import wenono.Nuri;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import fypeba.Zikorur;


   public class PetAbilityMeter extends Sprite implements Pywafejer
   {
      public function PetAbilityMeter() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kenage=new Qanyduk();
         this.hyk=new Qyvuw();
         super();
         this.micir.wanajyk.add(this.kiwuhok);
         this.meruvi();
         this.jifajenuj();
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.hyk.lubec(this);
         return;
      }

      public const wanajyk:Qanyduk = new Qanyduk(PetAbilityMeter,Boolean);

      private const honusemeq:Guzowoja = Zikorur.kapybyhy(11776947,14,true,true);

      private const fatuven:Guzowoja = Zikorur.kapybyhy(11776947,14,true,true);

      private const micir:Fofebikuz = new Fofebikuz(Rikuko.cohusibow,Rikuko.juzap);

      private var hyho:Boolean = true;

      private var sabeham:int = 0;

      private var giv:int = 0;

      private var dinu:Number = 0;

      public var kenage:Qanyduk;

      public var max:int;

      public var index:int;

      private var hyk:Qyvuw;

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.micir.wanajyk.remove(this.kiwuhok);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public function laroguv(param1:Kyruha) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.sabeham=param1.points;
         this.giv=param1.level;
         this.saha(param1.name);
         this.setUnlocked(param1.cetosyc());
         this.wymyquvu(this.hyho?param1.level:0);
         this.kiwuhok(false);
         this.hyk.tooltip=new Wajuzeka(param1);
         if(this.hyho)
         {
            _loc2_=Math.max(0,Kanej.jukyt(param1.points,param1.level));
            _loc3_=Kanej.wowyr(param1.level);
            _loc2_=param1.level>=this.max?_loc3_:_loc2_;
            this.tolo(_loc2_,_loc3_);
         }
         param1.nuzum.add(this.cin);
         return;
      }

      private function cin(param1:Kyruha) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         this.setUnlocked(param1.cetosyc());
         if(param1.points>this.sabeham&&(this.hyho))
         {
            this.sabeham=param1.points;
            this.dinu=Kanej.jukyt(param1.points,this.giv);
            _loc2_=Kanej.wowyr(this.giv);
            if(!(_loc2_==0)&&this.dinu>_loc2_)
            {
               this.dinu=this.dinu-_loc2_;
               this.micir.jykale.add(this.quhif);
               this.micir.fill();
               this.kiwuhok(true);
            }
            else
            {
               this.tolo(this.dinu,_loc2_);
            }
         }
         return;
      }

      private function quhif() : void {
         var [OFS3]_loc5_:* = [/OFS]false;
         var [OFS5]_loc6_:* = [/OFS]true;
         var [OFS10]_loc2_:* = [/OFS][OFS9]NaN[/OFS];
         var [OFS12]_loc1_:* = [/OFS]false;
         this.[OFS16]giv[/OFS][OFS25]++[/OFS];
         this.[OFS38]wymyquvu[/OFS][OFS38]([/OFS]this.[OFS34]giv[/OFS][OFS38],[/OFS]true[OFS38])[/OFS];
         [OFS54]_loc2_=[/OFS][OFS42]Kanej[/OFS].[OFS49]wowyr[/OFS][OFS49]([/OFS]this.[OFS46]giv[/OFS][OFS49])[/OFS];
         if(this.[OFS56]dinu[/OFS][OFS60]>[/OFS][OFS59]_loc2_[/OFS])
         {
            this.[OFS65]micir[/OFS].[OFS68]reset[/OFS][OFS68]([/OFS][OFS68])[/OFS];
            this.[OFS79]dinu[/OFS][OFS79]=[/OFS]this.[OFS74]dinu[/OFS][OFS78]-[/OFS][OFS77]_loc2_[/OFS];
            this.[OFS83]micir[/OFS].[OFS86]fill[/OFS][OFS86]([/OFS][OFS86])[/OFS];
         }
         else
         {
            this.[OFS95]micir[/OFS].[OFS98]jykale[/OFS].[OFS105]remove[/OFS][OFS105]([/OFS]this.[OFS102]quhif[/OFS][OFS105])[/OFS];
            if(this.[OFS109]giv[/OFS][OFS116]>=[/OFS]this.[OFS113]max[/OFS])
            {
               this.[OFS121]micir[/OFS].[OFS125]makigaly[/OFS][OFS125]([/OFS][OFS124]null[/OFS][OFS125])[/OFS];
               this.[OFS132]dinu[/OFS][OFS132]=[/OFS][OFS130]0[/OFS];
            }
            else
            {
               this.[OFS140]micir[/OFS].[OFS143]reset[/OFS][OFS143]([/OFS][OFS143])[/OFS];
               this.[OFS153]tolo[/OFS][OFS153]([/OFS]this.[OFS149]dinu[/OFS][OFS153],[/OFS][OFS152]_loc2_[/OFS][OFS153])[/OFS];
            }
         }
         [OFS157]return[/OFS];
      }

      public function saha(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fatuven.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }

      public function wymyquvu(param1:int, param2:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = param1>=this.max?Vibemod.kynuzojuv:Vibemod.wygi;
         this.honusemeq.setColor(param2?1572859:param1>=this.max?Rikuko.gocihed:11776947);
         this.honusemeq.setStringBuilder(new Kybidu().setParams(_loc3_,{level:param1.toString()}));
         this.honusemeq.textChanged.addOnce(this.zudevy);
         return;
      }

      public function tolo(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.micir.fymodas(param2);
         this.micir.tidusag(param1);
         return;
      }

      public function setUnlocked(param1:Boolean) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         if(this.hyho!=param1)
         {
            this.hyho=param1;
            _loc2_=param1?11776947:5658198;
            _loc3_=param1?[new DropShadowFilter(0,0,0)]:[];
            this.fatuven.setColor(_loc2_);
            this.fatuven.filters=_loc3_;
            this.honusemeq.visible=param1;
         }
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.fatuven);
         addChild(this.honusemeq);
         addChild(this.micir);
         return;
      }

      private function meruvi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nuri = new Nuri();
         _loc1_.push(this.honusemeq.textChanged);
         _loc1_.push(this.fatuven.textChanged);
         _loc1_.complete.addOnce(this.digavyj);
         return;
      }

      private function zudevy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.micir.y=21;
         this.honusemeq.x=Rikuko.cohusibow-this.honusemeq.width;
         return;
      }

      private function digavyj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zudevy();
         this.kenage.dispatch();
         return;
      }

      private function kiwuhok(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.honusemeq.setColor(param1?1572859:this.giv>=this.max?Rikuko.gocihed:11776947);
         this.fatuven.setColor(param1?1572859:this.giv>=100?Rikuko.gocihed:11776947);
         if(!param1&&this.giv>=100)
         {
            this.micir.begomuf(Rikuko.gocihed);
         }
         this.wanajyk.dispatch(this,param1);
         return;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyk.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.hyk.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyk.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.hyk.wuducocac();
      }
   }

}