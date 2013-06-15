package noniq
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Gequrenaj;
   import flash.display.Shape;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   class Qenynyb extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      function Qenynyb(param1:int) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.siza=new Vector.<Bumizerun>();
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.dudoja=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         super();
         this.zyfukaz=param1;
         this.guviqejy();
         this.joqeqe=new Sprite();
         this.joqeqe.x=4;
         this.joqeqe.y=6;
         addChild(this.joqeqe);
         this.wypyzeq=new Gequrenaj(towukoc,HEIGHT-8);
         this.wypyzeq.x=WIDTH-towukoc-6;
         this.wypyzeq.y=4;
         this.wypyzeq.addEventListener(Event.CHANGE,this.qorav);
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(0);
         _loc2_.graphics.drawRect(0,2,Qenynyb.WIDTH-towukoc-4,Qenynyb.HEIGHT-4);
         addChild(_loc2_);
         this.joqeqe.mask=_loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 136;

      public static const HEIGHT:int = 480;

      private static const towukoc:int = 20;

      public var zyfukaz:int;

      private var joqeqe:Sprite;

      public var selected_:Bumizerun;

      private var wypyzeq:Gequrenaj;

      private var mask_:Shape;

      private var siza:Vector.<Bumizerun>;

      public function macyhofufi() : int {
         return this.selected_.type_;
      }

      public function hope(param1:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Bumizerun = null;
         for each (_loc2_ in this.siza)
         {
            if(_loc2_.type_==param1)
            {
               this.setSelected(_loc2_);
               return;
            }
         }
         return;
      }

      protected function casaluzez(param1:Bumizerun) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc2_=this.siza.length;
         param1.x=_loc2_%2==0?0:2+Bumizerun.WIDTH;
         param1.y=int(_loc2_/2)*Bumizerun.HEIGHT+6;
         this.joqeqe.addChild(param1);
         if(_loc2_==0)
         {
            this.setSelected(param1);
         }
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.siza.push(param1);
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bumizerun = param1.currentTarget as Bumizerun;
         this.setSelected(_loc2_);
         return;
      }

      protected function setSelected(param1:Bumizerun) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.selected_!=null)
         {
            this.selected_.setSelected(false);
         }
         this.selected_=param1;
         this.selected_.setSelected(true);
         return;
      }

      protected function qorav(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.joqeqe.y=6-this.wypyzeq.devaqe()*(this.joqeqe.height+12-HEIGHT);
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys);
         this.wypyzeq.vyhojig(HEIGHT,this.joqeqe.height);
         addChild(this.wypyzeq);
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys);
         return;
      }

      protected function lyqesusys(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.delta>0)
         {
            this.wypyzeq.jido();
         }
         else
         {
            if(param1.delta<0)
            {
               this.wypyzeq.bosabo();
            }
         }
         return;
      }

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var dudoja:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function guviqejy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}