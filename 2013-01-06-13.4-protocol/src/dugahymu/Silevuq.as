package dugahymu
{
[CLASS568]   import flash.display.Sprite;
   import tinava.Dab;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.display.Bitmap;


   public class Silevuq extends Sprite
   {
      public function Silevuq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sapar=new Vector.<Nomijoliz>();
         this.serumosy=new Vector.<Sprite>();
         super();
         this.mar.addEventListener(MouseEvent.CLICK,this.bilolesy);
         addChild(this.mar);
         this.qafu();
         addChild(this.kef);
         this.kef.y=Piqubidak.qypumen;
         return;
      }

      public const wov:Dab = new Dab(String);

      public const WIDTH:Number = 186;

      public const HEIGHT:Number = 153;

      private const mar:Sprite = new Sprite();

      private const background:Sprite = new Sprite();

      private const kef:Sprite = new Sprite();

      public var sapar:Vector.<Nomijoliz>;

      private var serumosy:Vector.<Sprite>;

      public var garyzin:int;

      private function bilolesy(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hykip(param1.target.parent as Nomijoliz);
         return;
      }

      public function qeca(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hykip(this.sapar[param1]);
         return;
      }

      private function hykip(param1:Nomijoliz) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nomijoliz = null;
         if(param1)
         {
            _loc2_=this.sapar[this.garyzin];
            if(_loc2_.index!=param1.index)
            {
               _loc2_.setSelected(false);
               param1.setSelected(true);
               this.vycutirif(param1.index);
               this.wov.dispatch(this.serumosy[param1.index].name);
            }
         }
         return;
      }

      public function qafu() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(Piqubidak.nasapap,1);
         var _loc2_:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=_loc2_;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Nosupygu.secebeq(0,0,this.WIDTH,this.HEIGHT-Piqubidak.qypumen,6,[1,1,1,1],_loc2_);
         this.background.graphics.drawGraphicsData(_loc3_);
         this.background.y=Piqubidak.qypumen;
         addChild(this.background);
         return;
      }

      public function sewibo() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = 0;
         this.garyzin=0;
         var _loc2_:uint = this.sapar.length;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            this.mar.removeChild(this.sapar[_loc1_]);
            this.kef.removeChild(this.serumosy[_loc1_]);
            _loc1_++;
         }
         this.sapar=new Vector.<Nomijoliz>();
         this.serumosy=new Vector.<Sprite>();
         return;
      }

      public function pepibymi(param1:Bitmap, param2:Sprite) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:int = this.sapar.length;
         var _loc4_:Nomijoliz = this.qyso(_loc3_,param1);
         this.sapar.push(_loc4_);
         this.mar.addChild(_loc4_);
         this.serumosy.push(param2);
         this.kef.addChild(param2);
         if(_loc3_>0)
         {
            param2.visible=false;
         }
         else
         {
            _loc4_.setSelected(true);
            this.vycutirif(0);
            this.wov.dispatch(param2.name);
         }
         return;
      }

      public function zopa() : void {
         return;
      }

      private function qyso(param1:int, param2:Bitmap) : Nomijoliz {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Sprite = new Boci();
         var _loc4_:Nomijoliz = new Nomijoliz(param1,_loc3_,param2);
         _loc4_.x=param1*(_loc3_.width+Piqubidak.bykize);
         _loc4_.y=Piqubidak.veka;
         return _loc4_;
      }

      private function vycutirif(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Sprite = null;
         var _loc3_:Sprite = null;
         if(param1!=this.garyzin)
         {
            _loc2_=this.serumosy[this.garyzin];
            _loc3_=this.serumosy[param1];
            _loc2_.visible=false;
            _loc3_.visible=true;
            this.garyzin=param1;
         }
         return;
      }
   }
[/CLASS]
}