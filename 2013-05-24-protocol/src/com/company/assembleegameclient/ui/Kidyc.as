package com.company.assembleegameclient.ui
{
   import tekoh.Gemanyq;
   import flash.geom.Matrix;
   import tekoh.Zukot;
   import flash.display.Shape;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import movimet.Jetadopuc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import com.company.util.Hepapi;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import nec.Nara;
   import flash.geom.Point;
   import com.company.util.Tizulo;
   import raqu.Hujuhy;
   import raqu.Goq;
   import com.company.assembleegameclient.objects.Player;
   import tys.Febij;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import com.company.util.MoreColorUtil;


   public class Kidyc extends Slot implements Gemanyq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kidyc(param1:int, param2:Boolean, param3:Boolean, param4:int, param5:int, param6:Array, param7:uint) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         this.dyfikimyb=new Hecor();
         this.rykuqizel=new GraphicsSolidFill(16711310,1);
         this.cedit=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.rykuqizel);
         this.vojedu=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.cedit;
         new Vector.<IGraphicsData>(3)[1]=this.vojedu;
         new Vector.<IGraphicsData>(3)[2]=Tizulo.gejyd;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super(param4,param5,param6);
         this.id=param7;
         this.item_=param1;
         this.included_=param3;
         this.durubo();
         if(!param2)
         {
            transform.colorTransform=MoreColorUtil.vyd;
         }
         this.nikigiqi=this.rehif();
         addChild(this.nikigiqi);
         this.setIncluded(param3);
         this.piwawawiw.kol(this);
         return;
      }

      private static const qafywo:Matrix = new Matrix();

      public static const vymaje:int = -1;

      private static const tihomedyz:Matrix = zula();

      private static function zula() : Matrix {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Matrix = new Matrix();
         _loc1_.translate(10,5);
         return _loc1_;
      }

      public var included_:Boolean;

      public var dyfikimyb:Hecor;

      public const piwawawiw:Zukot = new Zukot();

      private var id:uint;

      private var item_:int;

      private var nikigiqi:Shape;

      private var rykuqizel:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var vojedu:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      private var jyr:Jetadopuc;

      private function durubo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.isEmpty())
         {
            this.pigu();
         }
         return;
      }

      private function pigu() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Bitmap = null;
         var _loc5_:BitmapData = null;
         Hepapi.zolinoqa(this,zyt);
         var _loc1_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.item_,80,true);
         var _loc2_:XML = ObjectLibrary.tem[this.item_];
         if((_loc2_.hasOwnProperty("Doses"))&&(this.jyr))
         {
            _loc1_=_loc1_.clone();
            _loc5_=this.jyr.make(new Nara(String(_loc2_.Doses)),12,16777215,false,qafywo,false);
            _loc1_.draw(_loc5_,tihomedyz);
         }
         var _loc3_:Point = siremi(this.item_,type_,false);
         _loc4_=new Bitmap(_loc1_);
         _loc4_.x=WIDTH/2-_loc4_.width/2+_loc3_.x;
         _loc4_.y=HEIGHT/2-_loc4_.height/2+_loc3_.y;
         Hepapi.jamuny(this,_loc4_);
         return;
      }

      public function setIncluded(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.included_=param1;
         this.nikigiqi.visible=this.included_;
         if(this.included_)
         {
            qofad.color=16764247;
         }
         else
         {
            qofad.color=5526612;
         }
         tizyf();
         return;
      }

      public function zuku(param1:Jetadopuc) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jyr=param1;
         this.durubo();
         return;
      }

      private function rehif() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         Tizulo.vomynaqu(this.vojedu);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,noqitece,this.vojedu);
         _loc1_.graphics.drawGraphicsData(this.graphicsData_);
         return _loc1_;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwawawiw.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.piwawawiw.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.piwawawiw.wab();
      }

      public function tysyh(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.isEmpty())
         {
            this.piwawawiw.tooltip=this.dyfikimyb.make(this.item_,param1,-1,Febij.OTHER_PLAYER,this.id);
         }
         return;
      }

      public function isEmpty() : Boolean {
         return this.item_==vymaje;
      }
   }

}