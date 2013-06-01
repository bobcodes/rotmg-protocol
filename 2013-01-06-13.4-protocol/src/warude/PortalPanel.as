package warude
{
[CLASS540]   import com.company.assembleegameclient.objects.Portal;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import tinava.Dab;
   import tidi.Dak;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.googleanalytics.GA;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.objects.Hikymiz;
   import totuhare.Qebar;
   import com.company.assembleegameclient.game.GameSprite;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;


   public class PortalPanel extends Panel
   {
      public function PortalPanel(param1:GameSprite, param2:Portal) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.gibeho=param2;
         this.nameText_=new Capitu().setSize(18).setColor(16777215).setBold(true).setTextWidth(WIDTH).setHorizontalAlign(TextFormatAlign.CENTER);
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.juwocez.push(this.nameText_.textChanged);
         this.woki=new Cid(16,Kefyfa.bih);
         addChild(this.woki);
         this.juwocez.push(this.woki.textChanged);
         this.rogo=new Capitu().setSize(18).setColor(16711680).setHTML(true).setBold(true).setAutoSize(TextFieldAutoSize.CENTER);
         var _loc3_:String = this.gibeho.moly?Kefyfa.pemegy:Kefyfa.qelivifod;
         this.rogo.setStringBuilder(new Zufi().setParams(_loc3_).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.rogo.filters=[new DropShadowFilter(0,0,0)];
         this.rogo.textChanged.addOnce(this.alignUI);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         this.juwocez.complete.addOnce(this.alignUI);
         return;
      }

      private const LOCKED:String = "Locked ";

      private const tinajy:RegExp = new RegExp("\\{\"text\":\"(.+)\"}");

      public var gibeho:Portal;

      private var nameText_:Capitu;

      private var woki:Cid;

      private var rogo:Capitu;

      public const ciqys:Dab = new Dab();

      private const juwocez:Dak = new Dak();

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nameText_.y=6;
         this.woki.x=WIDTH/2-this.woki.width/2;
         this.woki.y=HEIGHT-this.woki.height-4;
         this.rogo.y=HEIGHT-30;
         this.rogo.x=WIDTH/2;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.woki.addEventListener(MouseEvent.CLICK,this.nokewohom);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function nokewohom(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.enterPortal();
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.enterPortal();
         }
         return;
      }

      private function enterPortal() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = ObjectLibrary.mafiwape[this.gibeho.objectType_];
         if(_loc1_=="Nexus Portal")
         {
            GA.global().trackEvent("enterPortal",_loc1_);
         }
         else
         {
            GA.global().trackEvent("enterPortal",this.gibeho.getName());
         }
         doneAction(gs_,Tutorial.nemeficiv);
         gs_.gsc_.usePortal(this.gibeho.objectId_);
         this.ciqys.dispatch();
         return;
      }

      override public function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fow();
         if(!this.gibeho.moly&&(this.gibeho.jog)&&(contains(this.rogo)))
         {
            removeChild(this.rogo);
            addChild(this.woki);
         }
         else
         {
            if(((this.gibeho.moly)||!this.gibeho.jog)&&(contains(this.woki)))
            {
               removeChild(this.woki);
               addChild(this.rogo);
            }
         }
         return;
      }

      private function fow() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = this.getName();
         var _loc2_:Qebar = new Hikymiz().makeBuilder(_loc1_);
         this.nameText_.setStringBuilder(_loc2_);
         this.nameText_.x=(WIDTH-this.nameText_.width)*0.5;
         this.nameText_.y=this.nameText_.height>30?0:6;
         return;
      }

      private function getName() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = this.gibeho.getName();
         if((this.gibeho.moly)&&_loc1_.indexOf(this.LOCKED)==0)
         {
            return _loc1_.substr(this.LOCKED.length);
         }
         return this.rodaf(_loc1_);
      }

      private function rodaf(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.match(this.tinajy);
         return _loc2_?_loc2_[1]:param1;
      }
   }
[/CLASS]
}