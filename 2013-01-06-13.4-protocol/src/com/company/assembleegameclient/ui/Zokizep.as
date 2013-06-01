package com.company.assembleegameclient.ui
{
[CLASS526]   import viky.Wihury;
   import flash.geom.Matrix;
   import viky.Hoselyfov;
   import flash.display.Shape;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import pudev.Sinobyf;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import com.company.util.Gyk;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import totuhare.Javo;
   import flash.geom.Point;
   import com.company.util.Nosupygu;
   import dutes.Zevazogo;
   import dutes.Soz;
   import com.company.assembleegameclient.objects.Player;
   import zohom.Jenag;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import com.company.util.MoreColorUtil;


   public class Zokizep extends Slot implements Wihury
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zokizep(param1:int, param2:Boolean, param3:Boolean, param4:int, param5:int, param6:Array, param7:uint) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.navazo=new Geked();
         this.somok=new GraphicsSolidFill(16711310,1);
         this.deb=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.somok);
         this.bytygug=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(3)[0]=this.deb;
         new Vector.<IGraphicsData>(3)[1]=this.bytygug;
         new Vector.<IGraphicsData>(3)[2]=Nosupygu.puzy;
         this.graphicsData_=new Vector.<IGraphicsData>(3);
         super(param4,param5,param6);
         this.id=param7;
         this.item_=param1;
         this.included_=param3;
         this.suheji();
         if(!param2)
         {
            transform.colorTransform=MoreColorUtil.pilu;
         }
         this.pitylur=this.lorunyzu();
         addChild(this.pitylur);
         this.setIncluded(param3);
         this.tuhucysys.mosajo(this);
         return;
      }

      private static const subaquzi:Matrix = new Matrix();

      public static const sywuk:int = -1;

      private static const kybuziz:Matrix = fykuref();

      private static function fykuref() : Matrix {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Matrix = new Matrix();
         _loc1_.translate(10,5);
         return _loc1_;
      }

      public var included_:Boolean;

      public var navazo:Geked;

      public const tuhucysys:Hoselyfov = new Hoselyfov();

      private var id:uint;

      private var item_:int;

      private var pitylur:Shape;

      private var somok:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var bytygug:GraphicsPath;

      private var graphicsData_:Vector.<IGraphicsData>;

      private var murohero:Sinobyf;

      private function suheji() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.isEmpty())
         {
            this.ligyfifeb();
         }
         return;
      }

      private function ligyfifeb() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Bitmap = null;
         var _loc5_:BitmapData = null;
         Gyk.qekecebo(this,vaqahyca);
         var _loc1_:BitmapData = ObjectLibrary.getRedrawnTextureFromType(this.item_,80,true);
         var _loc2_:XML = ObjectLibrary.zedij[this.item_];
         if((_loc2_.hasOwnProperty("Doses"))&&(this.murohero))
         {
            _loc1_=_loc1_.clone();
            _loc5_=this.murohero.make(new Javo(String(_loc2_.Doses)),12,16777215,false,subaquzi,false);
            _loc1_.draw(_loc5_,kybuziz);
         }
         var _loc3_:Point = mur(this.item_,type_,false);
         _loc4_=new Bitmap(_loc1_);
         _loc4_.x=WIDTH/2-_loc4_.width/2+_loc3_.x;
         _loc4_.y=HEIGHT/2-_loc4_.height/2+_loc3_.y;
         Gyk.bazeper(this,_loc4_);
         return;
      }

      public function setIncluded(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.included_=param1;
         this.pitylur.visible=this.included_;
         if(this.included_)
         {
            coboj.color=16764247;
         }
         else
         {
            coboj.color=5526612;
         }
         qafu();
         return;
      }

      public function wumo(param1:Sinobyf) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.murohero=param1;
         this.suheji();
         return;
      }

      private function lorunyzu() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         Nosupygu.jyrodepu(this.bytygug);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,dyjafeji,this.bytygug);
         _loc1_.graphics.drawGraphicsData(this.graphicsData_);
         return _loc1_;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }

      public function vumeg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.isEmpty())
         {
            this.tuhucysys.tooltip=this.navazo.make(this.item_,param1,-1,Jenag.OTHER_PLAYER,this.id);
         }
         return;
      }

      public function isEmpty() : Boolean {
         return this.item_==sywuk;
      }
   }
[/CLASS]
}