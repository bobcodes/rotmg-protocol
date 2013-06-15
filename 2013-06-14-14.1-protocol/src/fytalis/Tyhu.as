package fytalis
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.Gim;
   import flash.events.Event;
   import copano.Byz;


   public class Tyhu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tyhu(param1:GameSprite, param2:Player, param3:int, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.gs_=param1;
         this.player_=param2;
         this.w_=param3;
         this.h_=param4;
         this.henubyj=new Zuvyjij(param1);
         return;
      }

      public static const fanuj:Number = 1;

      public var gs_:GameSprite;

      public var player_:Player;

      public var w_:int;

      public var h_:int;

      public var dozirahi:Panel = null;

      public var hucir:Gim = null;

      public var henubyj:Zuvyjij;

      private var bubo:Panel;

      public var wybuwuj:Function;

      public function setOverride(param1:Panel) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.bubo!=null)
         {
            this.bubo.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         this.bubo=param1;
         this.bubo.addEventListener(Event.COMPLETE,this.onComplete);
         return;
      }

      public function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dozirahi.draw();
         return;
      }

      public function draw() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Gim = null;
         var _loc2_:Panel = null;
         if(this.bubo!=null)
         {
            this.syziret(this.bubo);
            this.dozirahi.draw();
            return;
         }
         _loc1_=this.wybuwuj();
         if(this.dozirahi==null||!(_loc1_==this.hucir))
         {
            this.hucir=_loc1_;
            if(this.hucir!=null)
            {
               _loc2_=this.hucir.getPanel(this.gs_);
               this.henubyj=new Zuvyjij(this.gs_);
            }
            else
            {
               _loc2_=this.henubyj;
            }
            this.syziret(_loc2_);
         }
         if(this.dozirahi)
         {
            this.dozirahi.draw();
         }
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.bubo!=null)
         {
            this.bubo.removeEventListener(Event.COMPLETE,this.onComplete);
            this.bubo=null;
         }
         this.syziret(null);
         this.draw();
         return;
      }

      public function syziret(param1:Panel) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1!=this.dozirahi)
         {
            this.dozirahi=param1;
         }
         return;
      }

      private function netihu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.dozirahi is Byz)
         {
            this.dozirahi.x=(this.w_-this.dozirahi.width)*0.5;
            this.dozirahi.y=8;
         }
         else
         {
            this.dozirahi.x=6;
            this.dozirahi.y=8;
         }
         addChild(this.dozirahi);
         return;
      }
   }

}