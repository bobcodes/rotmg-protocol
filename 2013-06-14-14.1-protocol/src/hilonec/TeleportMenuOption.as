package hilonec
{
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.objects.Player;
   import hivysif.Guzowoja;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.util.AssetLibrary;
   import komi.Vibemod;
   import jediwip.Kybidu;


   public class TeleportMenuOption extends Vazodav
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function TeleportMenuOption(param1:Player) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.gijecuza=new Shape();
         super(AssetLibrary.tem("lofiInterface2",3),16777215,Vibemod.gizad);
         this.player_=param1;
         this.vaqas=new Guzowoja().setSize(18).setColor(16777215);
         this.vaqas.setBold(true);
         this.vaqas.setStringBuilder(new Kybidu().setParams(Vibemod.gizad));
         this.vaqas.x=this.gijecuza.x=text_.x;
         this.vaqas.y=this.gijecuza.y=text_.y;
         this.vaqas.textChanged.add(this.onTextChanged);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const lefupego:ColorTransform = new ColorTransform(84/255,84/255,84/255);

      private var player_:Player;

      private var picolumah:Boolean = false;

      private var vaqas:Guzowoja;

      private var lidyf:int;

      private var gijecuza:Shape;

      private function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lidyf=this.vaqas.vatapyle.width;
         this.gijecuza.graphics.beginFill(16711935);
         this.gijecuza.graphics.drawRect(0,0,this.vaqas.vatapyle.width,this.vaqas.vatapyle.height);
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = NaN;
         var _loc2_:int = this.player_.dywawo();
         if(_loc2_>0)
         {
            if(!contains(this.vaqas))
            {
               addChild(this.vaqas);
               addChild(this.gijecuza);
               this.vaqas.mask=this.gijecuza;
            }
            _loc3_=this.lidyf*(1-_loc2_/Player.nawevi);
            this.gijecuza.width=_loc3_;
            jywor(lefupego);
         }
         else
         {
            if(contains(this.vaqas))
            {
               removeChild(this.vaqas);
            }
            if(this.picolumah)
            {
               jywor(tehobur);
            }
            else
            {
               jywor(null);
            }
         }
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.picolumah=true;
         return;
      }

      override protected function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.picolumah=false;
         return;
      }
   }

}