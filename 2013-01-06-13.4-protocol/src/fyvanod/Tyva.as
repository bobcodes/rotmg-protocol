package fyvanod
{
[CLASS1545]   import flash.display.Sprite;
   import tinava.Dab;
   import flash.display.Shape;
   import barotuvy.GTween;
   import flash.geom.ColorTransform;


   public class Tyva extends Sprite
   {
      public function Tyva(param1:int, param2:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zinopymor=new Shape();
         this.pepico=new Shape();
         super();
         this.zonek=param1;
         this.tun=param2;
         this.pepico.graphics.beginFill(this.jimelanez,1);
         this.pepico.graphics.drawRect(0,0,param1,param2);
         addChild(this.pepico);
         addChild(this.zinopymor);
         return;
      }

      public const hamaqo:Dab = new Dab(Boolean);

      public const wetuholud:Dab = new Dab();

      private const pese:uint = 11776947;

      private const biculij:uint = 1572859;

      private const jimelanez:uint = 5658198;

      private var zinopymor:Shape;

      private var pepico:Shape;

      private var kopypomu:int = 0;

      public var kyqonesyv:int = -1;

      private var zonek:int = 0;

      private var tun:int = 0;

      public function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kyqonesyv=0;
         this.zinopymor.graphics.clear();
         this.zinopymor.graphics.beginFill(this.pese,1);
         this.zinopymor.graphics.drawRect(0,0,1,this.tun);
         this.zinopymor.width=1;
         return;
      }

      public function fill() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.kyqonesyv==this.kopypomu)
         {
            this.reset();
            this.wetuholud.dispatch();
            return;
         }
         var _loc1_:Number = this.zonek;
         this.cawupaj(this.biculij);
         var _loc2_:GTween = new GTween(this.zinopymor,1,{width:_loc1_});
         _loc2_.onComplete=this.botefoda;
         return;
      }

      private function botefoda(param1:GTween) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wetuholud.dispatch();
         return;
      }

      public function cawupaj(param1:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = this.zinopymor.transform.colorTransform;
         _loc2_.color=param1;
         this.zinopymor.transform.colorTransform=_loc2_;
         return;
      }

      public function mitimyw(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kopypomu=param1;
         this.qehihegev();
         return;
      }

      public function ver(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         if(this.kyqonesyv==-1)
         {
            this.kyqonesyv=param1;
            _loc2_=this.podazojat();
            this.zinopymor.graphics.beginFill(this.pese,1);
            this.zinopymor.graphics.drawRect(0,0,_loc2_,this.tun);
         }
         this.kyqonesyv=param1;
         this.qehihegev();
         return;
      }

      private function qehihegev() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:GTween = null;
         var _loc1_:int = this.podazojat();
         if(!(this.kyqonesyv==-1)&&!(this.kyqonesyv==0)&&!(_loc1_==Math.round(this.zinopymor.width)))
         {
            this.hamaqo.dispatch(true);
            this.cawupaj(this.biculij);
            _loc2_=new GTween(this.zinopymor,2,{width:_loc1_});
            _loc2_.onComplete=this.tufunesy;
         }
         return;
      }

      private function podazojat() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.kyqonesyv*this.zonek/this.kopypomu;
         return isNaN(_loc1_)?1:Math.round(Math.max(1,Math.min(this.zonek,_loc1_)));
      }

      public function tufunesy(param1:GTween) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cawupaj(this.pese);
         this.hamaqo.dispatch(false);
         return;
      }
   }
[/CLASS]
}