package coh
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import flash.display.Shape;
   import dilywopavy.GTween;
   import flash.geom.ColorTransform;


   public class Zenijo extends Sprite
   {
      public function Zenijo(param1:int, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.zefas=new Shape();
         this.quzuw=new Shape();
         super();
         this.rofukeve=param1;
         this.cylyfel=param2;
         this.quzuw.graphics.beginFill(this.nytody,1);
         this.quzuw.graphics.drawRect(0,0,param1,param2);
         addChild(this.quzuw);
         addChild(this.zefas);
         return;
      }

      public const nokew:Hugyqufyq = new Hugyqufyq(Boolean);

      public const jozola:Hugyqufyq = new Hugyqufyq();

      private const gyj:uint = 11776947;

      private const tyliw:uint = 1572859;

      private const nytody:uint = 5658198;

      private var zefas:Shape;

      private var quzuw:Shape;

      private var jup:int = 0;

      public var luz:int = -1;

      private var rofukeve:int = 0;

      private var cylyfel:int = 0;

      public function reset() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.luz=0;
         this.zefas.graphics.clear();
         this.zefas.graphics.beginFill(this.gyj,1);
         this.zefas.graphics.drawRect(0,0,1,this.cylyfel);
         this.zefas.width=1;
         return;
      }

      public function fill() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.luz==this.jup)
         {
            this.reset();
            this.jozola.dispatch();
            return;
         }
         var _loc1_:Number = this.rofukeve;
         this.qyrag(this.tyliw);
         var _loc2_:GTween = new GTween(this.zefas,1,{width:_loc1_});
         _loc2_.onComplete=this.fosesahyz;
         return;
      }

      private function fosesahyz(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jozola.dispatch();
         return;
      }

      public function qyrag(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = this.zefas.transform.colorTransform;
         _loc2_.color=param1;
         this.zefas.transform.colorTransform=_loc2_;
         return;
      }

      public function faqyje(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jup=param1;
         this.cevem();
         return;
      }

      public function nypo(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         if(this.luz==-1)
         {
            this.luz=param1;
            _loc2_=this.tegaguda();
            this.zefas.graphics.beginFill(this.gyj,1);
            this.zefas.graphics.drawRect(0,0,_loc2_,this.cylyfel);
         }
         this.luz=param1;
         this.cevem();
         return;
      }

      private function cevem() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:GTween = null;
         var _loc1_:int = this.tegaguda();
         if(!(this.luz==-1)&&!(this.luz==0)&&!(_loc1_==Math.round(this.zefas.width)))
         {
            this.nokew.dispatch(true);
            this.qyrag(this.tyliw);
            _loc2_=new GTween(this.zefas,2,{width:_loc1_});
            _loc2_.onComplete=this.jakit;
         }
         return;
      }

      private function tegaguda() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.luz*this.rofukeve/this.jup;
         return isNaN(_loc1_)?1:Math.round(Math.max(1,Math.min(this.rofukeve,_loc1_)));
      }

      public function jakit(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qyrag(this.gyj);
         this.nokew.dispatch(false);
         return;
      }
   }

}