package cerywij
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.display.Bitmap;


   public class Qedicudo extends Sprite
   {
      public function Qedicudo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nidawybi=new Vector.<Wifyrypyc>();
         this.hufalag=new Vector.<Sprite>();
         super();
         this.nufefalyv.addEventListener(MouseEvent.CLICK,this.lanaquqe);
         addChild(this.nufefalyv);
         this.guviqejy();
         addChild(this.ciw);
         this.ciw.y=Kog.myvarid;
         return;
      }

      public const gycyfyw:Qanyduk = new Qanyduk(String);

      public const WIDTH:Number = 186;

      public const HEIGHT:Number = 153;

      private const nufefalyv:Sprite = new Sprite();

      private const background:Sprite = new Sprite();

      private const ciw:Sprite = new Sprite();

      public var nidawybi:Vector.<Wifyrypyc>;

      private var hufalag:Vector.<Sprite>;

      public var cidufyjoh:int;

      private function lanaquqe(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.duzaruces(param1.target.parent as Wifyrypyc);
         return;
      }

      public function ned(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.duzaruces(this.nidawybi[param1]);
         return;
      }

      private function duzaruces(param1:Wifyrypyc) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wifyrypyc = null;
         if(param1)
         {
            _loc2_=this.nidawybi[this.cidufyjoh];
            if(_loc2_.index!=param1.index)
            {
               _loc2_.setSelected(false);
               param1.setSelected(true);
               this.fowaqihu(param1.index);
               this.gycyfyw.dispatch(this.hufalag[param1.index].name);
            }
         }
         return;
      }

      public function guviqejy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:GraphicsSolidFill = new GraphicsSolidFill(Kog.filol,1);
         var _loc2_:GraphicsPath = new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=_loc1_;
         new Vector.<IGraphicsData>(3)[1]=_loc2_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         var _loc3_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         Dyrejocu.moluv(0,0,this.WIDTH,this.HEIGHT-Kog.myvarid,6,[1,1,1,1],_loc2_);
         this.background.graphics.drawGraphicsData(_loc3_);
         this.background.y=Kog.myvarid;
         addChild(this.background);
         return;
      }

      public function cuny() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = 0;
         this.cidufyjoh=0;
         var _loc2_:uint = this.nidawybi.length;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            this.nufefalyv.removeChild(this.nidawybi[_loc1_]);
            this.ciw.removeChild(this.hufalag[_loc1_]);
            _loc1_++;
         }
         this.nidawybi=new Vector.<Wifyrypyc>();
         this.hufalag=new Vector.<Sprite>();
         return;
      }

      public function tazil(param1:Bitmap, param2:Sprite) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = this.nidawybi.length;
         var _loc4_:Wifyrypyc = this.cuhy(_loc3_,param1);
         this.nidawybi.push(_loc4_);
         this.nufefalyv.addChild(_loc4_);
         this.hufalag.push(param2);
         this.ciw.addChild(param2);
         if(_loc3_>0)
         {
            param2.visible=false;
         }
         else
         {
            _loc4_.setSelected(true);
            this.fowaqihu(0);
            this.gycyfyw.dispatch(param2.name);
         }
         return;
      }

      public function fedy() : void {
         return;
      }

      private function cuhy(param1:int, param2:Bitmap) : Wifyrypyc {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Sprite = new Kamipasen();
         var _loc4_:Wifyrypyc = new Wifyrypyc(param1,_loc3_,param2);
         _loc4_.x=param1*(_loc3_.width+Kog.pybywy);
         _loc4_.y=Kog.cyduga;
         return _loc4_;
      }

      private function fowaqihu(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sprite = null;
         var _loc3_:Sprite = null;
         if(param1!=this.cidufyjoh)
         {
            _loc2_=this.hufalag[this.cidufyjoh];
            _loc3_=this.hufalag[param1];
            _loc2_.visible=false;
            _loc3_.visible=true;
            this.cidufyjoh=param1;
         }
         return;
      }
   }

}