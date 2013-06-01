package gylijupa
{
[CLASS414]   import rymuhuduh.Cyzan;
   import tinava.Dab;
   import pudev.Capitu;
   import qilarag.Boqurot;
   import tiromisyg.Hez;
   import flash.events.MouseEvent;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.display.Shape;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Cewimeso extends Cyzan
   {
      public function Cewimeso() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kewuhokag=new Dab(String);
         this.back=new Dab();
         this.fyk=this.jewyry();
         this.suwy=this.jokyg();
         this.tozoryf=this.hotade();
         super();
         addChild(this.zarupyby());
         addChild(this.fyk);
         addChild(new ScreenGraphic());
         addChild(this.suwy);
         return;
      }

      public var kewuhokag:Dab;

      public var back:Dab;

      private var fyk:Capitu;

      private var suwy:Boqurot;

      private var tozoryf:Capitu;

      private var vohyfacip:Hez;

      private function guwyzovac(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.back.dispatch();
         return;
      }

      public function liky(param1:Vector.<String>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vohyfacip=new Hez(param1);
         this.vohyfacip.y=100;
         this.vohyfacip.addEventListener(Event.CHANGE,this.vuny);
         addChild(this.vohyfacip);
         this.tozoryf.textChanged.addOnce(this.gejabikyc);
         addChild(this.tozoryf);
         this.tozoryf.y=this.vohyfacip.y+this.vohyfacip.goqeneveb()/2;
         return;
      }

      private function gejabikyc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vohyfacip.x=800/2-(this.vohyfacip.width+this.tozoryf.width+10)/2;
         this.tozoryf.x=this.vohyfacip.x+this.vohyfacip.width+10;
         return;
      }

      public function setSelected(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      private function vuny(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kewuhokag.dispatch(this.vohyfacip.getValue());
         return;
      }

      private function jewyry() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = new Capitu().setSize(36).setColor(16777215);
         _loc1_.setBold(true);
         _loc1_.setStringBuilder(new Zufi().setParams(Kefyfa.fuqaru));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.x=800/2-_loc1_.width/2;
         _loc1_.y=16;
         return _loc1_;
      }

      private function jokyg() : Boqurot {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boqurot = null;
         _loc1_=new Boqurot(Kefyfa.kigu,36,false);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.setVerticalAlign(Capitu.MIDDLE);
         _loc1_.addEventListener(MouseEvent.CLICK,this.guwyzovac);
         _loc1_.x=400;
         _loc1_.y=550;
         return _loc1_;
      }

      private function hotade() : Capitu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = new Capitu().setSize(16).setColor(11776947).setBold(true);
         _loc1_.setVerticalAlign(Capitu.MIDDLE);
         _loc1_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         _loc1_.setStringBuilder(new Zufi().setParams(Kefyfa.sabe));
         return _loc1_;
      }

      private function zarupyby() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.lineStyle(1,6184542);
         _loc1_.graphics.moveTo(0,70);
         _loc1_.graphics.lineTo(800,70);
         _loc1_.graphics.lineStyle();
         return _loc1_;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.vohyfacip)&&(contains(this.vohyfacip)))
         {
            removeChild(this.vohyfacip);
         }
         return;
      }
   }
[/CLASS]
}