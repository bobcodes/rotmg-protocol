package qilarag
{
[CLASS831]   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.filters.DropShadowFilter;
   import tinava.Dab;
   import pudev.Capitu;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import totuhare.Zufi;
   import flash.utils.getTimer;
   import com.company.util.MoreColorUtil;
   import gawulu.Cuqicyh;


   public class Boqurot extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Boqurot(param1:String, param2:int, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.size=param2;
         this.zomapycu=param3;
         this.tiluvo.setSize(param2).setColor(16777215).setBold(true);
         this.newotikeh(param1);
         this.tab=width;
         this.jylacejo=height;
         this.activate();
         return;
      }

      protected static const zicuziqe:ColorTransform = new ColorTransform(1,220/255,133/255);

      private static const pody:DropShadowFilter = new DropShadowFilter(0,0,0,0.5,12,12);

      public const zokokof:Dab = new Dab();

      public const tiluvo:Capitu = this.losa();

      public const copysa:Dab = this.tiluvo.textChanged;

      private var colorTransform:ColorTransform;

      private var size:int;

      private var zomapycu:Boolean;

      private var tab:Number;

      private var jylacejo:Number;

      private var active:Boolean;

      public function activate() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.resavu);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.active=true;
         return;
      }

      public function deactivate() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ColorTransform = new ColorTransform();
         _loc1_.color=3552822;
         this.tofijeni(_loc1_);
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.CLICK,this.resavu);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.active=false;
         return;
      }

      public function jupadak() : Boolean {
         return this.active;
      }

      private function losa() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu();
         _loc1_.filters=[pody];
         addChild(_loc1_);
         return _loc1_;
      }

      public function newotikeh(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         name=param1;
         this.tiluvo.setStringBuilder(new Zufi().setParams(param1));
         return;
      }

      public function setAutoSize(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tiluvo.setAutoSize(param1);
         return;
      }

      public function setVerticalAlign(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tiluvo.setVerticalAlign(param1);
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.zomapycu)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.zomapycu)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = 1.05+0.05*Math.sin(getTimer()/200);
         this.tiluvo.scaleX=_loc2_;
         this.tiluvo.scaleY=_loc2_;
         return;
      }

      public function tofijeni(param1:ColorTransform) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.colorTransform)
         {
            return;
         }
         this.colorTransform=param1;
         if(this.colorTransform==null)
         {
            this.tiluvo.transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            this.tiluvo.transform.colorTransform=this.colorTransform;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tofijeni(zicuziqe);
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tofijeni(null);
         return;
      }

      protected function resavu(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Cuqicyh.play("button_click");
         this.zokokof.dispatch();
         return;
      }

      override public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "[TitleMenuOption "+this.tiluvo.kym()+"]";
      }
   }
[/CLASS]
}