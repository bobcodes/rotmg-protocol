package zekeqa
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Hiry;
   import __AS3__.vec.Vector;
   import flash.text.TextFieldAutoSize;
   import gabufo.Qiwug;
   import flash.display.DisplayObject;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import flash.events.Event;
   import com.company.googleanalytics.GA;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;


   public class Frame extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Frame(param1:String, param2:String, param3:String, param4:String="", param5:int=288) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.purif=new Vector.<Pedug>();
         this.lac=new Vector.<Hiry>();
         this.wirepygy=new GraphicsSolidFill(5066061,1);
         this.dudoja=new GraphicsSolidFill(3552822,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path1_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.path2_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(9)[0]=this.dudoja;
         new Vector.<IGraphicsData>(9)[1]=this.path2_;
         new Vector.<IGraphicsData>(9)[2]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(9)[3]=this.wirepygy;
         new Vector.<IGraphicsData>(9)[4]=this.path1_;
         new Vector.<IGraphicsData>(9)[5]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(9)[6]=this.dabyqeqi;
         new Vector.<IGraphicsData>(9)[7]=this.path2_;
         new Vector.<IGraphicsData>(9)[8]=Dyrejocu.jydebugu;
         super();
         this.w_=param5;
         this.tob=new Guzowoja().setSize(12).setColor(11776947);
         this.tob.setStringBuilder(new Kybidu().setParams(param1));
         this.tob.filters=[new DropShadowFilter(0,0,0)];
         this.tob.x=5;
         this.tob.y=3;
         this.tob.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(this.tob);
         this.sunyjosy(param2);
         this.dony(param3);
         this.rum=param4;
         filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      private static const fyb:Number = 17;

      public var tob:Guzowoja;

      public var vuz:Hiry;

      public var nuwido:Hiry;

      public var rum:String;

      public var purif:Vector.<Pedug>;

      public var lac:Vector.<Hiry>;

      public var w_:int = 288;

      public var h_:int = 100;

      private function sunyjosy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vuz=new Hiry(18,true,param1);
         if(param1!="")
         {
            this.vuz.buttonMode=true;
            this.vuz.x=109;
            addChild(this.vuz);
         }
         return;
      }

      private function dony(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nuwido=new Hiry(18,true,param1);
         this.nuwido.buttonMode=true;
         this.nuwido.x=this.w_-this.nuwido.width-26;
         this.nuwido.setAutoSize(TextFieldAutoSize.RIGHT);
         addChild(this.nuwido);
         return;
      }

      public function meti(param1:Qiwug) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         param1.y=this.h_-60;
         param1.x=17;
         this.h_=this.h_+param1.getHeight();
         return;
      }

      public function gozunigyl(param1:Pedug) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.purif.push(param1);
         addChild(param1);
         param1.y=this.h_-60;
         param1.x=17;
         this.h_=this.h_+Pedug.HEIGHT;
         return;
      }

      public function pivol(param1:Hiry) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lac.push(param1);
         param1.x=fyb;
         addChild(param1);
         this.positionText(param1);
         return;
      }

      public function leve(param1:DisplayObject, param2:int=8) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=param2;
         this.h_=this.h_+param1.height;
         return;
      }

      public function lajocul(param1:String, param2:Object=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var text:Guzowoja = null;
         var position:Function = null;
         var plainText:String = param1;
         var tokens:Object = param2;
         position=new function():void
         {
            positionText(text);
            draw();
            return;
         };
         text=new Guzowoja().setSize(12).setColor(16777215);
         text.setStringBuilder(new Kybidu().setParams(plainText,tokens));
         text.filters=[new DropShadowFilter(0,0,0)];
         text.textChanged.add(position);
         addChild(text);
         return;
      }

      protected function positionText(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.y=this.h_-66;
         param1.x=fyb;
         this.h_=this.h_+20;
         return;
      }

      public function nopuz(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Guzowoja = null;
         _loc2_=new Guzowoja().setSize(20).setColor(11711154).setBold(true);
         _loc2_.setStringBuilder(new Kybidu().setParams(param1));
         _loc2_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         addChild(_loc2_);
         _loc2_.y=this.h_-60;
         _loc2_.x=15;
         this.h_=this.h_+40;
         return;
      }

      public function nemutyzyv(param1:Devene) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=fyb;
         this.h_=this.h_+44;
         return;
      }

      public function kolakok(param1:Siz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(param1);
         param1.y=this.h_-66;
         param1.x=18;
         this.h_=this.h_+param1.height;
         return;
      }

      public function kufobyb(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.h_=this.h_+param1;
         return;
      }

      public function disable() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Hiry = null;
         mouseEnabled=false;
         mouseChildren=false;
         for each (_loc1_ in this.lac)
         {
            _loc1_.gowy(11776947);
         }
         this.vuz.gowy(11776947);
         this.nuwido.gowy(11776947);
         return;
      }

      public function kafuwuge() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Hiry = null;
         mouseEnabled=true;
         mouseChildren=true;
         for each (_loc1_ in this.lac)
         {
            _loc1_.gowy(16777215);
         }
         this.vuz.gowy(16777215);
         this.nuwido.gowy(16777215);
         return;
      }

      protected function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.draw();
         x=stage.stageWidth/2-(this.w_-6)/2;
         y=stage.stageHeight/2-height/2;
         if(this.purif.length>0)
         {
            stage.focus=this.purif[0].inputText_;
         }
         return;
      }

      private var wirepygy:GraphicsSolidFill;

      private var dudoja:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var path1_:GraphicsPath;

      private var path2_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(9);

      protected function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         Dyrejocu.gorudy(this.path1_);
         Dyrejocu.moluv(-6,-6,this.w_,20+12,4,[1,1,0,0],this.path1_);
         Dyrejocu.gorudy(this.path2_);
         Dyrejocu.moluv(-6,-6,this.w_,this.h_,4,[1,1,1,1],this.path2_);
         this.vuz.y=this.h_-52;
         this.nuwido.y=this.h_-52;
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}