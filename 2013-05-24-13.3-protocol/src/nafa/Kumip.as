package nafa
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.ui.Tira;
   import flash.display.Shape;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   class Kumip extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      function Kumip(param1:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vepeniger=new Vector.<Fyduc>();
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.bolu=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.bolu;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         super();
         this.gakej=param1;
         this.tizyf();
         this.qobejos=new Sprite();
         this.qobejos.x=4;
         this.qobejos.y=6;
         addChild(this.qobejos);
         this.cunahide=new Tira(pikas,HEIGHT-8);
         this.cunahide.x=WIDTH-pikas-6;
         this.cunahide.y=4;
         this.cunahide.addEventListener(Event.CHANGE,this.qugar);
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(0);
         _loc2_.graphics.drawRect(0,2,Kumip.WIDTH-pikas-4,Kumip.HEIGHT-4);
         addChild(_loc2_);
         this.qobejos.mask=_loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 136;

      public static const HEIGHT:int = 480;

      private static const pikas:int = 20;

      public var gakej:int;

      private var qobejos:Sprite;

      public var selected_:Fyduc;

      private var cunahide:Tira;

      private var mask_:Shape;

      private var vepeniger:Vector.<Fyduc>;

      public function dykaw() : int {
         return this.selected_.type_;
      }

      public function gekuvy(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Fyduc = null;
         for each (_loc2_ in this.vepeniger)
         {
            if(_loc2_.type_==param1)
            {
               this.setSelected(_loc2_);
               return;
            }
         }
         return;
      }

      protected function pozecoh(param1:Fyduc) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc2_=this.vepeniger.length;
         param1.x=_loc2_%2==0?0:2+Fyduc.WIDTH;
         param1.y=int(_loc2_/2)*Fyduc.HEIGHT+6;
         this.qobejos.addChild(param1);
         if(_loc2_==0)
         {
            this.setSelected(param1);
         }
         param1.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.vepeniger.push(param1);
         return;
      }

      protected function onMouseDown(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Fyduc = param1.currentTarget as Fyduc;
         this.setSelected(_loc2_);
         return;
      }

      protected function setSelected(param1:Fyduc) : void {
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

      protected function qugar(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qobejos.y=6-this.cunahide.cimubito()*(this.qobejos.height+12-HEIGHT);
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb);
         this.cunahide.jyqecubi(HEIGHT,this.qobejos.height);
         addChild(this.cunahide);
         return;
      }

      protected function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb);
         return;
      }

      protected function fapiveb(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.delta>0)
         {
            this.cunahide.faw();
         }
         else
         {
            if(param1.delta<0)
            {
               this.cunahide.lavuvy();
            }
         }
         return;
      }

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var bolu:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function tizyf() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}