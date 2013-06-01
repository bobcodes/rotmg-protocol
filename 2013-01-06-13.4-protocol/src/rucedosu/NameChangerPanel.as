package rucedosu
{
[CLASS446]   import warude.Panel;
   import tinava.Dab;
   import pudev.Capitu;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import gicuzum.Caty;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.util.Currency;
   import totuhare.Zufi;
   import com.company.assembleegameclient.ui.Cid;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.ui.RankText;
   import totuhare.Qebar;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;


   public class NameChangerPanel extends Panel
   {
      public function NameChangerPanel(param1:GameSprite, param2:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Player = null;
         var _loc4_:String = null;
         this.chooseName=new Dab();
         super(param1);
         if(this.wup())
         {
            _loc3_=gs_.map.player_;
            this.ruvemy=_loc3_.zykijaq;
            _loc4_=this.dilop();
            if(this.ruvemy)
            {
               this.finot(_loc4_);
            }
            else
            {
               if(_loc3_.numStars_<param2)
               {
                  this.selec(param2);
               }
               else
               {
                  this.dulima();
               }
            }
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      public var chooseName:Dab;

      public var ruvemy:Boolean;

      private var fyk:Capitu;

      private var faguki:Sprite;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.faguki)
         {
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function wup() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (gs_.map)&&(gs_.map.player_);
      }

      private function dilop() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = null;
         _loc1_=gs_.model.getName();
         this.fyk=new Capitu().setSize(18).setColor(16777215).setTextWidth(WIDTH);
         this.fyk.setBold(true).setWordWrap(true).setMultiLine(true).setHorizontalAlign(TextFormatAlign.CENTER);
         this.fyk.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      private function finot(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.fyk.setStringBuilder(this.renutady(param1));
         this.fyk.y=0;
         addChild(this.fyk);
         var _loc2_:Caty = new Caty(Kefyfa.roc,16,Parameters.pazyb,Currency.vusap);
         _loc2_.necilywe.addOnce(this.siqyrajif);
         this.faguki=_loc2_;
         addChild(this.faguki);
         this.kuqoquju();
         return;
      }

      private function siqyrajif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.faguki.x=WIDTH/2-this.faguki.width/2;
         this.faguki.y=HEIGHT-this.faguki.height/2-17;
         return;
      }

      private function dulima() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fyk.setStringBuilder(new Zufi().setParams(Kefyfa.mefuric));
         this.fyk.y=6;
         addChild(this.fyk);
         var _loc1_:Cid = new Cid(16,Kefyfa.bivip);
         _loc1_.textChanged.addOnce(this.buconajad);
         this.faguki=_loc1_;
         addChild(this.faguki);
         this.kuqoquju();
         return;
      }

      private function buconajad() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.faguki.x=WIDTH/2-this.faguki.width/2;
         this.faguki.y=HEIGHT-this.faguki.height-4;
         return;
      }

      private function kuqoquju() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.faguki.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         return;
      }

      private function selec(param1:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Sprite = null;
         var _loc3_:Capitu = null;
         var _loc4_:Sprite = null;
         this.fyk.setStringBuilder(new Zufi().setParams(Kefyfa.mefuric));
         addChild(this.fyk);
         _loc2_=new Sprite();
         _loc3_=new Capitu().setSize(16).setColor(16777215);
         _loc3_.setBold(true);
         _loc3_.setStringBuilder(new Zufi().setParams(Kefyfa.cibyvovip));
         _loc3_.filters=[new DropShadowFilter(0,0,0)];
         _loc2_.addChild(_loc3_);
         _loc4_=new RankText(param1,false,false);
         _loc4_.x=_loc3_.width+4;
         _loc4_.y=_loc3_.height/2-_loc4_.height/2;
         _loc2_.addChild(_loc4_);
         _loc2_.x=WIDTH/2-_loc2_.width/2;
         _loc2_.y=HEIGHT-_loc2_.height/2-20;
         addChild(_loc2_);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function renutady(param1:String) : Qebar {
         return new Zufi().setParams(Kefyfa.mydyjol,{name:param1});
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.vufon();
         }
         return;
      }

      private function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vufon();
         return;
      }

      private function vufon() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.chooseName.dispatch();
         return;
      }

      public function wege(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fyk.setStringBuilder(this.renutady(param1));
         this.fyk.y=0;
         return;
      }
   }
[/CLASS]
}