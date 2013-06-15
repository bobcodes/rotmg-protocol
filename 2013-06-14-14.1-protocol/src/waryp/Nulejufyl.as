package waryp
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.filters.DropShadowFilter;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import jediwip.Kybidu;
   import flash.utils.getTimer;
   import com.company.util.MoreColorUtil;
   import dorepoji.Kadido;


   public class Nulejufyl extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nulejufyl(param1:String, param2:int, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.size=param2;
         this.kazy=param3;
         this.vatapyle.setSize(param2).setColor(16777215).setBold(true);
         this.somaqu(param1);
         this.syr=width;
         this.cyfy=height;
         this.activate();
         return;
      }

      protected static const jovud:ColorTransform = new ColorTransform(1,220/255,133/255);

      private static const gecetivy:DropShadowFilter = new DropShadowFilter(0,0,0,0.5,12,12);

      public const peqe:Qanyduk = new Qanyduk();

      public const vatapyle:Guzowoja = this.bucazan();

      public const fow:Qanyduk = this.vatapyle.textChanged;

      private var colorTransform:ColorTransform;

      private var size:int;

      private var kazy:Boolean;

      private var syr:Number;

      private var cyfy:Number;

      private var active:Boolean;

      public function activate() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.wolycosy);
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
         this.jywor(_loc1_);
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         removeEventListener(MouseEvent.CLICK,this.wolycosy);
         removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.active=false;
         return;
      }

      public function liligi() : Boolean {
         return this.active;
      }

      private function bucazan() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja();
         _loc1_.filters=[gecetivy];
         addChild(_loc1_);
         return _loc1_;
      }

      public function somaqu(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         name=param1;
         this.vatapyle.setStringBuilder(new Kybidu().setParams(param1));
         return;
      }

      public function setAutoSize(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vatapyle.setAutoSize(param1);
         return;
      }

      public function setVerticalAlign(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vatapyle.setVerticalAlign(param1);
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kazy)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kazy)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Number = 1.05+0.05*Math.sin(getTimer()/200);
         this.vatapyle.scaleX=_loc2_;
         this.vatapyle.scaleY=_loc2_;
         return;
      }

      public function jywor(param1:ColorTransform) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.colorTransform)
         {
            return;
         }
         this.colorTransform=param1;
         if(this.colorTransform==null)
         {
            this.vatapyle.transform.colorTransform=MoreColorUtil.identity;
         }
         else
         {
            this.vatapyle.transform.colorTransform=this.colorTransform;
         }
         return;
      }

      protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jywor(jovud);
         return;
      }

      protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jywor(null);
         return;
      }

      protected function wolycosy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Kadido.play("button_click");
         this.peqe.dispatch();
         return;
      }

      override public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "[TitleMenuOption "+this.vatapyle.hat()+"]";
      }
   }

}