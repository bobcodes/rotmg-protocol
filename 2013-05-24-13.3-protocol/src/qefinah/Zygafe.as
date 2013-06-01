package qefinah
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.display.Bitmap;


   public class Zygafe extends Sprite
   {
      public function Zygafe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.liluhe=new Vector.<Dibir>();
         this.ricuru=new Vector.<Sprite>();
         super();
         this.dyt.addEventListener(MouseEvent.CLICK,this.butineg);
         addChild(this.dyt);
         this.tizyf();
         addChild(this.rovewapute);
         this.rovewapute.y=Lased.gipac;
         return;
      }

      public const netusuzu:Hugyqufyq = new Hugyqufyq(String);

      public const WIDTH:Number = 186;

      public const HEIGHT:Number = 153;

      private const dyt:Sprite = new Sprite();

      private const background:Sprite = new Sprite();

      private const rovewapute:Sprite = new Sprite();

      public var liluhe:Vector.<Dibir>;

      private var ricuru:Vector.<Sprite>;

      public var wiwelatys:int;

      private function butineg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vytopu(param1.target.parent as Dibir);
         return;
      }

      public function jakyse(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vytopu(this.liluhe[param1]);
         return;
      }

      private function vytopu(param1:Dibir) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Dibir = null;
         if(param1)
         {
            _loc2_=this.liluhe[this.wiwelatys];
            if(_loc2_.index!=param1.index)
            {
               _loc2_.setSelected(false);
               param1.setSelected(true);
               this.nako(param1.index);
               this.netusuzu.dispatch(this.ricuru[param1.index].name);
            }
         }
         return;
      }

      public function tizyf() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(Lased.zysohygo,1);
         var _loc2_:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=_loc2_;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Tizulo.woforyzib(0,0,this.WIDTH,this.HEIGHT-Lased.gipac,6,[1,1,1,1],_loc2_);
         this.background.graphics.drawGraphicsData(_loc3_);
         this.background.y=Lased.gipac;
         addChild(this.background);
         return;
      }

      public function vif() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = 0;
         this.wiwelatys=0;
         var _loc2_:uint = this.liluhe.length;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            this.dyt.removeChild(this.liluhe[_loc1_]);
            this.rovewapute.removeChild(this.ricuru[_loc1_]);
            _loc1_++;
         }
         this.liluhe=new Vector.<Dibir>();
         this.ricuru=new Vector.<Sprite>();
         return;
      }

      public function bovose(param1:Bitmap, param2:Sprite) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = this.liluhe.length;
         var _loc4_:Dibir = this.wacuj(_loc3_,param1);
         this.liluhe.push(_loc4_);
         this.dyt.addChild(_loc4_);
         this.ricuru.push(param2);
         this.rovewapute.addChild(param2);
         if(_loc3_>0)
         {
            param2.visible=false;
         }
         else
         {
            _loc4_.setSelected(true);
            this.nako(0);
            this.netusuzu.dispatch(param2.name);
         }
         return;
      }

      public function hiwef() : void {
         return;
      }

      private function wacuj(param1:int, param2:Bitmap) : Dibir {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Sprite = new Juryto();
         var _loc4_:Dibir = new Dibir(param1,_loc3_,param2);
         _loc4_.x=param1*(_loc3_.width+Lased.pyzifok);
         _loc4_.y=Lased.jikyz;
         return _loc4_;
      }

      private function nako(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sprite = null;
         var _loc3_:Sprite = null;
         if(param1!=this.wiwelatys)
         {
            _loc2_=this.ricuru[this.wiwelatys];
            _loc3_=this.ricuru[param1];
            _loc2_.visible=false;
            _loc3_.visible=true;
            this.wiwelatys=param1;
         }
         return;
      }
   }

}