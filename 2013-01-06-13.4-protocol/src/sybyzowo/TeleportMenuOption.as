package sybyzowo
{
[CLASS1111]   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.objects.Player;
   import pudev.Capitu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.util.AssetLibrary;
   import haqakel.Kefyfa;
   import totuhare.Zufi;


   public class TeleportMenuOption extends Vaqasor
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TeleportMenuOption(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(AssetLibrary.zovy("lofiInterface2",3),16777215,Kefyfa.hozikoh);
         this.player_=param1;
         this.kugu=new Capitu().setSize(18).setColor(16777215);
         this.kugu.setBold(true);
         this.kugu.setStringBuilder(new Zufi().setParams(Kefyfa.hozikoh));
         this.kugu.x=text_.x;
         this.kugu.y=text_.y;
         this.faro=this.kugu.width;
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const pymuwe:ColorTransform = new ColorTransform(84/255,84/255,84/255);

      private var player_:Player;

      private var dupo:Boolean = false;

      private var kugu:Capitu;

      private var faro:int;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.player_.qyk();
         if(_loc2_>0)
         {
            if(!contains(this.kugu))
            {
               addChild(this.kugu);
            }
            this.kugu.width=this.faro*(1-_loc2_/Player.dogizewig);
            tofijeni(pymuwe);
         }
         else
         {
            if(contains(this.kugu))
            {
               removeChild(this.kugu);
            }
            if(this.dupo)
            {
               tofijeni(nyjo);
            }
            else
            {
               tofijeni(null);
            }
         }
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dupo=true;
         return;
      }

      override protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dupo=false;
         return;
      }
   }
[/CLASS]
}