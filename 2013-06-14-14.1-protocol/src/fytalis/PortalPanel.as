package fytalis
{
   import com.company.assembleegameclient.objects.Portal;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import mukyrosu.Qanyduk;
   import wenono.Nuri;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.googleanalytics.GA;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.objects.Kuqymary;
   import jediwip.Tunyhazo;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;


   public class PortalPanel extends Panel
   {
      public function PortalPanel(param1:GameSprite, param2:Portal) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.gilyzygag=param2;
         this.nameText_=new Guzowoja().setSize(18).setColor(16777215).setBold(true).setTextWidth(WIDTH).setHorizontalAlign(TextFormatAlign.CENTER);
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.ryfoc.push(this.nameText_.textChanged);
         this.hudyqipo=new Tivinu(16,Vibemod.suzalame);
         addChild(this.hudyqipo);
         this.ryfoc.push(this.hudyqipo.textChanged);
         this.foq=new Guzowoja().setSize(18).setColor(16711680).setHTML(true).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         var _loc3_:String = this.gilyzygag.radonuc?Vibemod.wyze:Vibemod.wufykobo;
         this.foq.setStringBuilder(new Kybidu().setParams(_loc3_).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.foq.filters=[new DropShadowFilter(0,0,0)];
         this.foq.textChanged.addOnce(this.alignUI);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.ryfoc.complete.addOnce(this.alignUI);
         return;
      }

      private const LOCKED:String = "Locked ";

      private const peqaduha:RegExp = new RegExp("\\{\"text\":\"(.+)\"}");

      public var gilyzygag:Portal;

      private var nameText_:Guzowoja;

      private var hudyqipo:Tivinu;

      private var foq:Guzowoja;

      public const nitug:Qanyduk = new Qanyduk();

      private const ryfoc:Nuri = new Nuri();

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nameText_.y=6;
         this.hudyqipo.x=WIDTH/2-this.hudyqipo.width/2;
         this.hudyqipo.y=HEIGHT-this.hudyqipo.height-4;
         this.foq.y=HEIGHT-30;
         this.foq.x=WIDTH/2;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hudyqipo.addEventListener(MouseEvent.CLICK,this.hocig);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function hocig(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.enterPortal();
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==RotmgParameters.data_.interact&&stage.focus==null)
         {
            this.enterPortal();
         }
         return;
      }

      private function enterPortal() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = ObjectLibrary.kipanudad[this.gilyzygag.objectType_];
         if(_loc1_=="Nexus Portal")
         {
            GA.global().trackEvent("enterPortal",_loc1_);
         }
         else
         {
            GA.global().trackEvent("enterPortal",this.gilyzygag.getName());
         }
         doneAction(gs_,Tutorial.daveny);
         gs_.gsc_.usePortal(this.gilyzygag.objectId_);
         this.nitug.dispatch();
         return;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cohiky();
         if(!this.gilyzygag.radonuc&&(this.gilyzygag.zamyw)&&(contains(this.foq)))
         {
            removeChild(this.foq);
            addChild(this.hudyqipo);
         }
         else
         {
            if(((this.gilyzygag.radonuc)||!this.gilyzygag.zamyw)&&(contains(this.hudyqipo)))
            {
               removeChild(this.hudyqipo);
               addChild(this.foq);
            }
         }
         return;
      }

      private function cohiky() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = this.getName();
         var _loc2_:Tunyhazo = new Kuqymary().makeBuilder(_loc1_);
         this.nameText_.setStringBuilder(_loc2_);
         this.nameText_.x=(WIDTH-this.nameText_.width)*0.5;
         this.nameText_.y=this.nameText_.height>30?0:6;
         return;
      }

      private function getName() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.gilyzygag.getName();
         if((this.gilyzygag.radonuc)&&_loc1_.indexOf(this.LOCKED)==0)
         {
            return _loc1_.substr(this.LOCKED.length);
         }
         return this.wetimo(_loc1_);
      }

      private function wetimo(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.match(this.peqaduha);
         return _loc2_?_loc2_[1]:param1;
      }
   }

}