package haj
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.display.Shape;
   import buryq.GTween;
   import flash.geom.ColorTransform;


   public class Fofebikuz extends Sprite
   {
      public function Fofebikuz(param1:int, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.wirub=new Shape();
         this.qom=new Shape();
         super();
         this.hibafymo=param1;
         this.liq=param2;
         this.qom.graphics.beginFill(this.lupipuh,1);
         this.qom.graphics.drawRect(0,0,param1,param2);
         addChild(this.qom);
         addChild(this.wirub);
         return;
      }

      public const wanajyk:Qanyduk = new Qanyduk(Boolean);

      public const jykale:Qanyduk = new Qanyduk();

      private const tefojucab:uint = 11776947;

      private const hyda:uint = 1572859;

      private const lupipuh:uint = 5658198;

      private var wirub:Shape;

      private var qom:Shape;

      private var befehite:int = 0;

      public var lizose:int = -1;

      private var hibafymo:int = 0;

      private var liq:int = 0;

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lizose=0;
         this.wirub.graphics.clear();
         this.wirub.graphics.beginFill(this.tefojucab,1);
         this.wirub.graphics.drawRect(0,0,1,this.liq);
         this.wirub.width=1;
         return;
      }

      public function fill() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.lizose==this.befehite)
         {
            this.reset();
            this.jykale.dispatch();
            return;
         }
         var _loc1_:Number = this.hibafymo;
         this.begomuf(this.hyda);
         var _loc2_:GTween = new GTween(this.wirub,1,{width:_loc1_});
         _loc2_.onComplete=this.gitimuj;
         return;
      }

      private function gitimuj(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jykale.dispatch();
         return;
      }

      public function begomuf(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = this.wirub.transform.colorTransform;
         _loc2_.color=param1;
         this.wirub.transform.colorTransform=_loc2_;
         return;
      }

      public function fymodas(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.befehite=param1;
         this.vywuduhy();
         return;
      }

      public function tidusag(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         if(this.lizose==-1)
         {
            this.lizose=param1;
            _loc2_=this.nicy();
            this.wirub.graphics.beginFill(this.tefojucab,1);
            this.wirub.graphics.drawRect(0,0,_loc2_,this.liq);
         }
         this.lizose=param1;
         this.vywuduhy();
         return;
      }

      private function vywuduhy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:GTween = null;
         var _loc1_:int = this.nicy();
         if(!(this.lizose==-1)&&!(this.lizose==0)&&!(_loc1_==Math.round(this.wirub.width)))
         {
            this.wanajyk.dispatch(true);
            this.begomuf(this.hyda);
            _loc2_=new GTween(this.wirub,2,{width:_loc1_});
            _loc2_.onComplete=this.makigaly;
         }
         return;
      }

      private function nicy() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.lizose*this.hibafymo/this.befehite;
         return isNaN(_loc1_)?1:Math.round(Math.max(1,Math.min(this.hibafymo,_loc1_)));
      }

      public function makigaly(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.begomuf(this.tefojucab);
         this.wanajyk.dispatch(false);
         return;
      }
   }

}