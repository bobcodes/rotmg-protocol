package dugahymu
{
[CLASS531]   import flash.display.Sprite;
   import guvakipe.StatModel;
   import haqakel.Kefyfa;
   import __AS3__.vec.Vector;
   import zehus.Caje;
   import com.company.assembleegameclient.objects.Player;
   import flash.filters.GlowFilter;
   import flash.events.MouseEvent;


   public class Hohu extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hohu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.background=this.nybedo();
         this.jibolu=new Vector.<Jukagigyv>();
         this.kef=new Sprite();
         super();
         addChild(this.background);
         addChild(this.kef);
         this.jary();
         mouseChildren=false;
         this.kyrajepi=new Caje(this,MouseEvent.MOUSE_DOWN,MouseEvent);
         return;
      }

      private static const cejamu:Array = [new StatModel(Kefyfa.fulejic,Kefyfa.myg,Kefyfa.hoq,true),new StatModel(Kefyfa.kyzin,Kefyfa.pivo,Kefyfa.tysapa,false),new StatModel(Kefyfa.pinopulip,Kefyfa.vorymita,Kefyfa.pasynaja,true),new StatModel(Kefyfa.solisaqo,Kefyfa.qumuqahu,Kefyfa.zewazi,true),new StatModel(Kefyfa.puvycoc,Kefyfa.seqyh,Kefyfa.lasilesu,true),new StatModel(Kefyfa.buke,Kefyfa.cegysotoc,Kefyfa.hunywumin,true)];

      public static const zodol:int = 0;

      public static const muc:int = 1;

      public static const guwanyvi:int = 2;

      public static const cujyvasod:int = 3;

      public static const mowati:int = 4;

      public static const qura:int = 5;

      public static const cirum:String = "state_undocked";

      public static const migiciw:String = "state_docked";

      public static const mejeh:String = migiciw;

      private const WIDTH:int = 191;

      private const HEIGHT:int = 45;

      private var background:Sprite;

      public var jibolu:Vector.<Jukagigyv>;

      public var kef:Sprite;

      public var kyrajepi:Caje;

      public var nebe:String = "state_docked";

      private function jary() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Jukagigyv = null;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<cejamu.length)
         {
            _loc3_=this.woto(_loc2_,_loc1_);
            this.jibolu.push(_loc3_);
            this.kef.addChild(_loc3_);
            _loc1_=_loc1_+_loc2_%2;
            _loc2_++;
         }
         return;
      }

      private function woto(param1:int, param2:int) : Jukagigyv {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:StatModel = cejamu[param1];
         var _loc4_:Jukagigyv = new Jukagigyv(_loc3_.name,_loc3_.mywu,_loc3_.description,_loc3_.bijez);
         _loc4_.x=param1%2*this.WIDTH/2;
         _loc4_.y=param2*this.HEIGHT/3;
         return _loc4_;
      }

      public function draw(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.fobofo();
            this.vatol(param1);
         }
         this.kef.x=(this.WIDTH-this.kef.width)/2;
         return;
      }

      private function vatol(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jibolu[zodol].draw(param1.mihu,param1.qiqogy,param1.senata);
         this.jibolu[muc].draw(param1.gas,param1.zyvegaciq,param1.cuci);
         this.jibolu[guwanyvi].draw(param1.speed_,param1.rame,param1.buragufyg);
         this.jibolu[cujyvasod].draw(param1.boke,param1.vibitejed,param1.fusatum);
         this.jibolu[mowati].draw(param1.hocuwag,param1.pidaf,param1.fupo);
         this.jibolu[qura].draw(param1.wofariwav,param1.kynoqas,param1.givun);
         return;
      }

      public function dygibenyz() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nebe=migiciw;
         return;
      }

      public function wigem() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nebe=cirum;
         return;
      }

      private function nybedo() : Sprite {
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

      private function fobofo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.nebe==cirum)
         {
            this.background.alpha=1;
         }
         else
         {
            if(this.nebe==migiciw)
            {
               this.background.alpha=0;
            }
         }
         return;
      }
   }
[/CLASS]
}