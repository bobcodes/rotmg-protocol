package nyvubeze
{
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.objects.Player;
   import movimet.Lufub;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.util.AssetLibrary;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;


   public class TeleportMenuOption extends Wuzyq
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TeleportMenuOption(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(AssetLibrary.jeqycu("lofiInterface2",3),16777215,I18nKeys.pikak);
         this.player_=param1;
         this.cok=new Lufub().setSize(18).setColor(16777215);
         this.cok.setBold(true);
         this.cok.setStringBuilder(new Sire().setParams(I18nKeys.pikak));
         this.cok.x=text_.x;
         this.cok.y=text_.y;
         this.nemusaqeb=this.cok.width;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const volykogek:ColorTransform = new ColorTransform(84/255,84/255,84/255);

      private var player_:Player;

      private var vefymyjul:Boolean = false;

      private var cok:Lufub;

      private var nemusaqeb:int;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.player_.qowuvef();
         if(_loc2_>0)
         {
            if(!contains(this.cok))
            {
               addChild(this.cok);
            }
            this.cok.width=this.nemusaqeb*(1-_loc2_/Player.niha);
            qiziry(volykogek);
         }
         else
         {
            if(contains(this.cok))
            {
               removeChild(this.cok);
            }
            if(this.vefymyjul)
            {
               qiziry(sujy);
            }
            else
            {
               qiziry(null);
            }
         }
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vefymyjul=true;
         return;
      }

      override protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vefymyjul=false;
         return;
      }
   }

}