package dec
{
[CLASS1629]   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Gogo;
   import flash.display.Shape;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   class Gifog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Gifog(param1:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gahegi=new Vector.<Cozicebyk>();
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.mowejyman=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.deb;
         new Vector.<IGraphicsData>(5)[1]=this.mowejyman;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.puzy;
         super();
         this.zejujod=param1;
         this.qafu();
         this.qewe=new Sprite();
         this.qewe.x=4;
         this.qewe.y=6;
         addChild(this.qewe);
         this.ras=new Gogo(qiceqowom,HEIGHT-8);
         this.ras.x=WIDTH-qiceqowom-6;
         this.ras.y=4;
         this.ras.addEventListener(Event.CHANGE,this.requgo);
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(0);
         _loc2_.graphics.drawRect(0,2,Gifog.WIDTH-qiceqowom-4,Gifog.HEIGHT-4);
         addChild(_loc2_);
         this.qewe.mask=_loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 136;

      public static const HEIGHT:int = 480;

      private static const qiceqowom:int = 20;

      public var zejujod:int;

      private var qewe:Sprite;

      public var selected_:Cozicebyk;

      private var ras:Gogo;

      private var mask_:Shape;

      private var gahegi:Vector.<Cozicebyk>;

      public function zivymasub() : int {
         return this.selected_.type_;
      }

      public function saqegiqu(param1:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Cozicebyk = null;
         for each (_loc2_ in this.gahegi)
         {
            if(_loc2_.type_==param1)
            {
               this.setSelected(_loc2_);
               return;
            }
         }
         return;
      }

      protected function remihigi(param1:Cozicebyk) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc2_=this.gahegi.length;
         param1.x=_loc2_%2==0?0:2+Cozicebyk.WIDTH;
         param1.y=int(_loc2_/2)*Cozicebyk.HEIGHT+6;
         this.qewe.addChild(param1);
         if(_loc2_==0)
         {
            this.setSelected(param1);
         }
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gahegi.push(param1);
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Cozicebyk = param1.currentTarget as Cozicebyk;
         this.setSelected(_loc2_);
         return;
      }

      protected function setSelected(param1:Cozicebyk) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.selected_!=null)
         {
            this.selected_.setSelected(false);
         }
         this.selected_=param1;
         this.selected_.setSelected(true);
         return;
      }

      protected function requgo(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qewe.y=6-this.ras.repofav()*(this.qewe.height+12-HEIGHT);
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addEventListener(MouseEvent.MOUSE_WHEEL,this.jybep);
         this.ras.jewojomyb(HEIGHT,this.qewe.height);
         addChild(this.ras);
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.jybep);
         return;
      }

      protected function jybep(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.delta>0)
         {
            this.ras.gunib();
         }
         else
         {
            if(param1.delta<0)
            {
               this.ras.mivego();
            }
         }
         return;
      }

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var mowejyman:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function qafu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }
[/CLASS]
}