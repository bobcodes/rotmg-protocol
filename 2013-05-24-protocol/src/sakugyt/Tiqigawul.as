package sakugyt
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.filters.DropShadowFilter;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import nec.Sire;
   import flash.utils.getTimer;
   import com.company.util.MoreColorUtil;
   import vozireni.Pozunubu;


   public class Tiqigawul extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Tiqigawul(param1:String, param2:int, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.size=param2;
         this.towerafuq=param3;
         this.fuhobi.setSize(param2).setColor(16777215).setBold(true);
         this.hifyvapy(param1);
         this.deqazi=width;
         this.kurulezam=height;
         this.activate();
         return;
      }

      protected static const fini:ColorTransform = new ColorTransform(1,220/255,133/255);

      private static const wedaku:DropShadowFilter = new DropShadowFilter(0,0,0,0.5,12,12);

      public const siperu:Hugyqufyq = new Hugyqufyq();

      public const fuhobi:Lufub = this.hajuve();

      public const seda:Hugyqufyq = this.fuhobi.textChanged;

      private var colorTransform:ColorTransform;

      private var size:int;

      private var towerafuq:Boolean;

      private var deqazi:Number;

      private var kurulezam:Number;

      private var active:Boolean;

      public function activate() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.hoso);
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
         this.qiziry(_loc1_);
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.CLICK,this.hoso);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.active=false;
         return;
      }

      public function bewym() : Boolean {
         return this.active;
      }

      private function hajuve() : Lufub {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub();
         _loc1_.filters=[wedaku];
         addChild(_loc1_);
         return _loc1_;
      }

      public function hifyvapy(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         name=param1;
         this.fuhobi.setStringBuilder(new Sire().setParams(param1));
         return;
      }

      public function setAutoSize(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fuhobi.setAutoSize(param1);
         return;
      }

      public function setVerticalAlign(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fuhobi.setVerticalAlign(param1);
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.towerafuq)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.towerafuq)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = 1.05+0.05*Math.sin(getTimer()/200);
         this.fuhobi.scaleX=_loc2_;
         this.fuhobi.scaleY=_loc2_;
         return;
      }

      public function qiziry(param1:ColorTransform) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.colorTransform)
         {
            return;
         }
         this.colorTransform=param1;
         if(this.colorTransform==null)
         {
            this.fuhobi.transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            this.fuhobi.transform.colorTransform=this.colorTransform;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qiziry(fini);
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiziry(null);
         return;
      }

      protected function hoso(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Pozunubu.play("button_click");
         this.siperu.dispatch();
         return;
      }

      override public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "[TitleMenuOption "+this.fuhobi.geheza()+"]";
      }
   }

}