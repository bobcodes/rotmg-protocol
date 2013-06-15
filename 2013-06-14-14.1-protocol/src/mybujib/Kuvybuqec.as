package mybujib
{
   import flash.display.Sprite;
   import hilonec.Menu;
   import flash.display.DisplayObjectContainer;
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.Shape;
   import mavew.Qyryl;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import com.company.assembleegameclient.map.Qawosiwi;
   import flash.geom.Rectangle;
   import com.company.util.Baticor;
   import com.company.util.Trig;
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;


   public class Kuvybuqec extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kuvybuqec(param1:uint, param2:uint, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.kimiq=new Vector.<GameObject>();
         this.mimipu=new Shape();
         this.kytop=new Point();
         super();
         this.gugatylo=param1;
         this.wybek=param2;
         this.pubobiquq=param3;
         addChild(this.mimipu);
         this.riqela();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         filters=[new DropShadowFilter(0,0,0,1,8,8)];
         visible=false;
         return;
      }

      public static const cutihet:int = 8;

      public static const gipefate:int = 11;

      public static const hycum:int = 3;

      private static var bet:Menu = null;

      public static function videhel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bet!=null)
         {
            if(bet.parent!=null)
            {
               bet.parent.removeChild(bet);
            }
            bet=null;
         }
         return;
      }

      public var rokawekos:DisplayObjectContainer;

      public var gugatylo:uint;

      public var wybek:uint;

      public var go_:GameObject = null;

      public var kimiq:Vector.<GameObject>;

      public var picolumah:Boolean = false;

      private var pubobiquq:Boolean;

      private var mimipu:Shape;

      protected var viponoke:Qyryl = null;

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.picolumah=true;
         this.riqela();
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.picolumah=false;
         this.riqela();
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.stopImmediatePropagation();
         return;
      }

      protected function cagemec(param1:Qyryl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jiqoretyj();
         this.viponoke=param1;
         if(this.viponoke!=null)
         {
            addChild(this.viponoke);
            this.jefecowe(this.viponoke);
         }
         return;
      }

      protected function jiqoretyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.viponoke!=null)
         {
            if(this.viponoke.parent!=null)
            {
               this.viponoke.parent.removeChild(this.viponoke);
            }
            this.viponoke=null;
         }
         return;
      }

      protected function bibu(param1:Menu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jiqoretyj();
         bet=param1;
         this.rokawekos.addChild(bet);
         return;
      }

      public function byrapywyd(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.go_!=param1)
         {
            this.go_=param1;
         }
         this.kimiq.length=0;
         if(this.go_==null)
         {
            visible=false;
         }
         return;
      }

      public function vagipu(param1:GameObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kimiq.push(param1);
         return;
      }

      private var kytop:Point;

      public function draw(param1:int, param2:Qawosiwi) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(this.go_==null)
         {
            visible=false;
            return;
         }
         this.go_.rinevil(param2);
         var _loc3_:Rectangle = param2.pajaqe;
         _loc4_=this.go_.witog[0];
         _loc5_=this.go_.witog[1];
         if(!Baticor.vuhebo(param2.pajaqe,0,0,_loc4_,_loc5_,this.kytop))
         {
            this.go_=null;
            visible=false;
            return;
         }
         x=this.kytop.x;
         y=this.kytop.y;
         var _loc6_:Number = Trig.syfujav(270-Trig.ryje*Math.atan2(_loc4_,_loc5_));
         if(this.kytop.x<_loc3_.left+5)
         {
            if(_loc6_>45)
            {
               _loc6_=45;
            }
            if(_loc6_<-45)
            {
               _loc6_=-45;
            }
         }
         else
         {
            if(this.kytop.x>_loc3_.right-5)
            {
               if(_loc6_>0)
               {
                  if(_loc6_<135)
                  {
                     _loc6_=135;
                  }
               }
               else
               {
                  if(_loc6_>-135)
                  {
                     _loc6_=-135;
                  }
               }
            }
         }
         if(this.kytop.y<_loc3_.top+5)
         {
            if(_loc6_<45)
            {
               _loc6_=45;
            }
            if(_loc6_>135)
            {
               _loc6_=135;
            }
         }
         else
         {
            if(this.kytop.y>_loc3_.bottom-5)
            {
               if(_loc6_>-45)
               {
                  _loc6_=-45;
               }
               if(_loc6_<-135)
               {
                  _loc6_=-135;
               }
            }
         }
         this.mimipu.rotation=_loc6_;
         if(this.viponoke!=null)
         {
            this.jefecowe(this.viponoke);
         }
         visible=true;
         return;
      }

      private function jefecowe(param1:Qyryl) : void {
         var [OFS2]_loc10_:* = [/OFS]true;
         var [OFS4]_loc11_:* = [/OFS]false;
         var [OFS9]_loc8_:* = [/OFS][OFS8]NaN[/OFS];
         var [OFS12]_loc9_:* = [/OFS][OFS11]NaN[/OFS];
         var [OFS22]_loc2_:Number = [/OFS]this.[OFS15]mimipu[/OFS].[OFS18]rotation[/OFS];
         var [OFS34]_loc3_:int = [/OFS][OFS23]hycum[/OFS][OFS29]+[/OFS][OFS26]gipefate[/OFS][OFS32]+[/OFS][OFS30]12[/OFS];
         var [OFS52]_loc4_:Number = [/OFS][OFS35]_loc3_[/OFS][OFS50]*[/OFS][OFS36]Math[/OFS].[OFS46]cos[/OFS][OFS46]([/OFS][OFS38]_loc2_[/OFS][OFS45]*[/OFS][OFS39]Trig[/OFS].[OFS42]totugiwu[/OFS][OFS46])[/OFS];
         var [OFS71]_loc5_:Number = [/OFS][OFS54]_loc3_[/OFS][OFS69]*[/OFS][OFS55]Math[/OFS].[OFS65]sin[/OFS][OFS65]([/OFS][OFS57]_loc2_[/OFS][OFS64]*[/OFS][OFS58]Trig[/OFS].[OFS61]totugiwu[/OFS][OFS65])[/OFS];
         var [OFS78]_loc6_:Number = [/OFS][OFS73]param1[/OFS].[OFS74]ryve[/OFS];
         var [OFS85]_loc7_:Number = [/OFS][OFS80]param1[/OFS].[OFS81]zufuw[/OFS];
         if([OFS87]_loc2_[/OFS][OFS90]>=[/OFS][OFS88]45[/OFS]&&[OFS97]_loc2_[/OFS][OFS101]<=[/OFS][OFS98]135[/OFS])
         {
            [OFS127]_loc8_=[/OFS][OFS106]_loc4_[/OFS][OFS125]+[/OFS][OFS108]_loc6_[/OFS][OFS124]/[/OFS][OFS110]Math[/OFS].[OFS120]tan[/OFS][OFS120]([/OFS][OFS112]_loc2_[/OFS][OFS119]*[/OFS][OFS113]Trig[/OFS].[OFS116]totugiwu[/OFS][OFS120])[/OFS];
            [OFS129]param1[/OFS].[OFS144]x[/OFS][OFS144]=[/OFS]([OFS130]_loc4_[/OFS][OFS134]+[/OFS][OFS132]_loc8_[/OFS])[OFS137]/[/OFS][OFS135]2[/OFS][OFS143]-[/OFS][OFS138]_loc6_[/OFS][OFS142]/[/OFS][OFS140]2[/OFS];
            [OFS146]param1[/OFS].[OFS149]y[/OFS][OFS149]=[/OFS][OFS147]_loc5_[/OFS];
         }
         else
         {
            if([OFS155]_loc2_[/OFS][OFS158]<=[/OFS][OFS156]-45[/OFS]&&[OFS165]_loc2_[/OFS][OFS172]>=[/OFS][OFS166]-135[/OFS])
            {
               [OFS198]_loc8_=[/OFS][OFS177]_loc4_[/OFS][OFS196]-[/OFS][OFS179]_loc6_[/OFS][OFS195]/[/OFS][OFS181]Math[/OFS].[OFS191]tan[/OFS][OFS191]([/OFS][OFS183]_loc2_[/OFS][OFS190]*[/OFS][OFS184]Trig[/OFS].[OFS187]totugiwu[/OFS][OFS191])[/OFS];
               [OFS200]param1[/OFS].[OFS215]x[/OFS][OFS215]=[/OFS]([OFS201]_loc4_[/OFS][OFS205]+[/OFS][OFS203]_loc8_[/OFS])[OFS208]/[/OFS][OFS206]2[/OFS][OFS214]-[/OFS][OFS209]_loc6_[/OFS][OFS213]/[/OFS][OFS211]2[/OFS];
               [OFS217]param1[/OFS].[OFS223]y[/OFS][OFS223]=[/OFS][OFS218]_loc5_[/OFS][OFS222]-[/OFS][OFS220]_loc7_[/OFS];
            }
            else
            {
               if([OFS229]_loc2_[/OFS][OFS232]<[/OFS][OFS230]45[/OFS]&&[OFS239]_loc2_[/OFS][OFS242]>[/OFS][OFS240]-45[/OFS])
               {
                  [OFS247]param1[/OFS].[OFS250]x[/OFS][OFS250]=[/OFS][OFS248]_loc4_[/OFS];
                  [OFS273]_loc9_=[/OFS][OFS252]_loc5_[/OFS][OFS271]+[/OFS][OFS254]_loc7_[/OFS][OFS270]*[/OFS][OFS256]Math[/OFS].[OFS266]tan[/OFS][OFS266]([/OFS][OFS258]_loc2_[/OFS][OFS265]*[/OFS][OFS259]Trig[/OFS].[OFS262]totugiwu[/OFS][OFS266])[/OFS];
                  [OFS275]param1[/OFS].[OFS290]y[/OFS][OFS290]=[/OFS]([OFS276]_loc5_[/OFS][OFS280]+[/OFS][OFS278]_loc9_[/OFS])[OFS283]/[/OFS][OFS281]2[/OFS][OFS289]-[/OFS][OFS284]_loc7_[/OFS][OFS288]/[/OFS][OFS286]2[/OFS];
               }
               else
               {
                  [OFS296]param1[/OFS].[OFS302]x[/OFS][OFS302]=[/OFS][OFS297]_loc4_[/OFS][OFS301]-[/OFS][OFS299]_loc6_[/OFS];
                  [OFS325]_loc9_=[/OFS][OFS304]_loc5_[/OFS][OFS323]-[/OFS][OFS306]_loc7_[/OFS][OFS322]*[/OFS][OFS308]Math[/OFS].[OFS318]tan[/OFS][OFS318]([/OFS][OFS310]_loc2_[/OFS][OFS317]*[/OFS][OFS311]Trig[/OFS].[OFS314]totugiwu[/OFS][OFS318])[/OFS];
                  [OFS327]param1[/OFS].[OFS342]y[/OFS][OFS342]=[/OFS]([OFS328]_loc5_[/OFS][OFS332]+[/OFS][OFS330]_loc9_[/OFS])[OFS335]/[/OFS][OFS333]2[/OFS][OFS341]-[/OFS][OFS336]_loc7_[/OFS][OFS340]/[/OFS][OFS338]2[/OFS];
               }
            }
         }
         [OFS344]return[/OFS];
      }

      private function riqela() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Graphics = this.mimipu.graphics;
         _loc1_.clear();
         var _loc2_:int = (this.pubobiquq)||(this.picolumah)?gipefate:cutihet;
         _loc1_.lineStyle(1,this.gugatylo);
         _loc1_.beginFill(this.wybek);
         _loc1_.moveTo(hycum,0);
         _loc1_.lineTo(_loc2_+hycum,_loc2_);
         _loc1_.lineTo(_loc2_+hycum,-_loc2_);
         _loc1_.lineTo(hycum,0);
         _loc1_.endFill();
         _loc1_.lineStyle();
         return;
      }
   }

}