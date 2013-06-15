package com.company.assembleegameclient.ui
{
   import gafuvy.Pywafejer;
   import flash.geom.Matrix;
   import gafuvy.Qyvuw;
   import flash.display.Shape;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import hivysif.Pyzykyj;
   import flash.geom.Point;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import com.company.util.Kideky;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import jediwip.Vofezuzy;
   import com.company.util.Dyrejocu;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import com.company.assembleegameclient.objects.Player;
   import hivaw.Woserev;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import com.company.util.MoreColorUtil;


   public class Fal extends Slot implements Pywafejer
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fal(param1:int, param2:Boolean, param3:Boolean, param4:int, param5:int, param6:Array, param7:uint) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         this.gyheri=new Cuto();
         this.cuben=new GraphicsSolidFill(16711310,1);
         this.dabyqeqi=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.cuben);
         this.zaluhaw=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(3)[1]=this.zaluhaw;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.jydebugu;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super(param4,param5,param6);
         this.id=param7;
         this.item_=param1;
         this.included_=param3;
         this.jony();
         if(!param2)
         {
            transform.colorTransform=MoreColorUtil.mimy;
         }
         this.fatyjyku=this.pafekyzi();
         addChild(this.fatyjyku);
         this.setIncluded(param3);
         this.debamipop.lubec(this);
         return;
      }

      private static const begatywy:Matrix = new Matrix();

      public static const vynyfypik:int = -1;

      private static const zotiqota:Matrix = rewuhife();

      private static function rewuhife() : Matrix {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Matrix = new Matrix();
         _loc1_.translate(10,5);
         return _loc1_;
      }

      public var included_:Boolean;

      public var gyheri:Cuto;

      public const debamipop:Qyvuw = new Qyvuw();

      private var id:uint;

      private var item_:int;

      private var fatyjyku:Shape;

      private var cuben:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var zaluhaw:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      private var duqukyj:Pyzykyj;

      private function jony() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.isEmpty())
         {
            this.lowityf();
         }
         return;
      }

      private function lowityf() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Point = null;
         var _loc4_:Bitmap = null;
         var _loc5_:BitmapData = null;
         Kideky.kapo(this,qas);
         var _loc1_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.item_,80,true);
         var _loc2_:XML = ObjectLibrary.ziq[this.item_];
         if((_loc2_.hasOwnProperty("Doses"))&&(this.duqukyj))
         {
            _loc1_=_loc1_.clone();
            _loc5_=this.duqukyj.make(new Vofezuzy(String(_loc2_.Doses)),12,16777215,false,begatywy,false);
            _loc1_.draw(_loc5_,zotiqota);
         }
         _loc3_=sovo(this.item_,type_,false);
         _loc4_=new Bitmap(_loc1_);
         _loc4_.x=WIDTH/2-_loc4_.width/2+_loc3_.x;
         _loc4_.y=HEIGHT/2-_loc4_.height/2+_loc3_.y;
         Kideky.corikak(this,_loc4_);
         return;
      }

      public function setIncluded(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.included_=param1;
         this.fatyjyku.visible=this.included_;
         if(this.included_)
         {
            visygody.color=16764247;
         }
         else
         {
            visygody.color=5526612;
         }
         guviqejy();
         return;
      }

      public function dybujafon(param1:Pyzykyj) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.duqukyj=param1;
         this.jony();
         return;
      }

      private function pafekyzi() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         Dyrejocu.gorudy(this.zaluhaw);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,qevezysas,this.zaluhaw);
         _loc1_.graphics.drawGraphicsData(this.graphicsData_);
         return _loc1_;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.debamipop.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.debamipop.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.debamipop.wuducocac();
      }

      public function bedyl(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.isEmpty())
         {
            this.debamipop.tooltip=this.gyheri.make(this.item_,param1,-1,Woserev.OTHER_PLAYER,this.id);
         }
         return;
      }

      public function isEmpty() : Boolean {
         return this.item_==vynyfypik;
      }
   }

}