package bemav
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import flash.display.Shape;
   import flash.display.Graphics;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.display.GraphicsPath;
   import com.company.util.Dyrejocu;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;


   public class Taf extends Sprite
   {
      public function Taf() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         addChild(this.wowahyt=this.pysusymoz());
         addChild(this.selected=this.hibyse());
         this.setSelected(false);
         return;
      }

      public const fow:Qanyduk = new Qanyduk(Boolean);

      private const WIDTH:int = 28;

      private const HEIGHT:int = 28;

      private var wowahyt:Shape;

      private var selected:Shape;

      public function setSelected(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wowahyt.visible=!param1;
         this.selected.visible=param1;
         this.fow.dispatch(param1);
         return;
      }

      private function pysusymoz() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.civapesab(_loc1_.graphics);
         return _loc1_;
      }

      private function hibyse() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Shape = new Shape();
         this.civapesab(_loc1_.graphics);
         this.zijyme(_loc1_.graphics);
         return _loc1_;
      }

      private function civapesab(param1:Graphics) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(0,0.01);
         var _loc3_:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);
         var _loc4_:GraphicsStroke = new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,_loc3_);
         var _loc5_:GraphicsPath = new GraphicsPath();
         Dyrejocu.moluv(0,0,this.WIDTH,this.HEIGHT,4,Dyrejocu.jybep,_loc5_);
         new Vector.<IGraphicsData>(5)[0]=_loc4_;
         new Vector.<IGraphicsData>(5)[1]=_loc2_;
         new Vector.<IGraphicsData>(5)[2]=_loc5_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         var _loc6_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);
         param1.drawGraphicsData(_loc6_);
         return;
      }

      private function zijyme(param1:Graphics) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:GraphicsSolidFill = new GraphicsSolidFill(16777215,1);
         var _loc3_:GraphicsPath = new GraphicsPath();
         Dyrejocu.moluv(4,4,this.WIDTH-8,this.HEIGHT-8,2,Dyrejocu.jybep,_loc3_);
         new Vector.<IGraphicsData>(3)[0]=_loc2_;
         new Vector.<IGraphicsData>(3)[1]=_loc3_;
         new Vector.<IGraphicsData>(3)[2]=Dyrejocu.END_FILL;
         var _loc4_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(3);
         param1.drawGraphicsData(_loc4_);
         return;
      }
   }

}