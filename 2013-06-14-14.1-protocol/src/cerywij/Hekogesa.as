package cerywij
{
   import flash.display.Sprite;
   import wahyqise.StatModel;
   import komi.Vibemod;
   import __AS3__.vec.Vector;
   import qykifavol.Hydydyqas;
   import com.company.assembleegameclient.objects.Player;
   import flash.filters.GlowFilter;
   import flash.events.MouseEvent;


   public class Hekogesa extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hekogesa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=this.vobocuwok();
         this.piwewito=new Vector.<Rozit>();
         this.ciw=new Sprite();
         super();
         addChild(this.background);
         addChild(this.ciw);
         this.qygocycyz();
         mouseChildren=false;
         this.tywaguku=new Hydydyqas(this,MouseEvent.MOUSE_DOWN,MouseEvent);
         return;
      }

      private static const butatumu:Array = [new StatModel(Vibemod.jyzavez,Vibemod.pojybyhol,Vibemod.jydolatud,true),new StatModel(Vibemod.fepud,Vibemod.jipogaja,Vibemod.qavutalok,false),new StatModel(Vibemod.bibe,Vibemod.hekekuse,Vibemod.pope,true),new StatModel(Vibemod.jubukoc,Vibemod.rugopylid,Vibemod.sowigyr,true),new StatModel(Vibemod.gyvyza,Vibemod.teqamyky,Vibemod.foqaha,true),new StatModel(Vibemod.wamofyq,Vibemod.torake,Vibemod.wijyka,true)];

      public static const fomosypy:int = 0;

      public static const rohadum:int = 1;

      public static const cozotade:int = 2;

      public static const sohaha:int = 3;

      public static const kumoh:int = 4;

      public static const ladizovyr:int = 5;

      public static const hymuka:String = "state_undocked";

      public static const welec:String = "state_docked";

      public static const rateror:String = welec;

      private const WIDTH:int = 191;

      private const HEIGHT:int = 45;

      private var background:Sprite;

      public var piwewito:Vector.<Rozit>;

      public var ciw:Sprite;

      public var tywaguku:Hydydyqas;

      public var lehekepa:String = "state_docked";

      private function qygocycyz() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Rozit = null;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<butatumu.length)
         {
            _loc3_=this.qihuj(_loc2_,_loc1_);
            this.piwewito.push(_loc3_);
            this.ciw.addChild(_loc3_);
            _loc1_=_loc1_+_loc2_%2;
            _loc2_++;
         }
         return;
      }

      private function qihuj(param1:int, param2:int) : Rozit {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:StatModel = butatumu[param1];
         var _loc4_:Rozit = new Rozit(_loc3_.name,_loc3_.juder,_loc3_.description,_loc3_.luky);
         _loc4_.x=param1%2*this.WIDTH/2;
         _loc4_.y=param2*this.HEIGHT/3;
         return _loc4_;
      }

      public function draw(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.midun();
            this.jeqopoba(param1);
         }
         this.ciw.x=(this.WIDTH-this.ciw.width)/2;
         return;
      }

      private function jeqopoba(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwewito[fomosypy].draw(param1.ryhefidu,param1.qop,param1.keweni);
         this.piwewito[rohadum].draw(param1.senajawec,param1.cut,param1.cuqi);
         this.piwewito[cozotade].draw(param1.speed_,param1.seqa,param1.wanukil);
         this.piwewito[sohaha].draw(param1.zaqudufa,param1.hedi,param1.vecacav);
         this.piwewito[kumoh].draw(param1.bybi,param1.mini,param1.guju);
         this.piwewito[ladizovyr].draw(param1.zes,param1.vasery,param1.velutesim);
         return;
      }

      public function wacaku() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lehekepa=welec;
         return;
      }

      public function pemob() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lehekepa=hymuka;
         return;
      }

      private function vobocuwok() : Sprite {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=new Sprite();
         this.background.graphics.clear();
         this.background.graphics.beginFill(3552822);
         this.background.graphics.lineStyle(2,16777215);
         this.background.graphics.drawRoundRect(-5,-5,this.WIDTH+10,this.HEIGHT+13,10);
         this.background.filters=[new GlowFilter(0,1,10,10,1,3)];
         return this.background;
      }

      private function midun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.lehekepa==hymuka)
         {
            this.background.alpha=1;
         }
         else
         {
            if(this.lehekepa==welec)
            {
               this.background.alpha=0;
            }
         }
         return;
      }
   }

}