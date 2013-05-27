package vaqob
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.Putafyhil;
   import flash.events.Event;
   import suko.Rerapipy;


   public class Rysyfuhyv extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rysyfuhyv(param1:GameSprite, param2:Player, param3:int, param4:int) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.gs_=param1;
         this.player_=param2;
         this.w_=param3;
         this.h_=param4;
         this.soduw=new Likalet(param1);
         return;
      }

      public static const girih:Number = 1;

      public var gs_:GameSprite;

      public var player_:Player;

      public var w_:int;

      public var h_:int;

      public var palyrofyf:Panel = null;

      public var gito:Putafyhil = null;

      public var soduw:Likalet;

      private var rynupuka:Panel;

      public var vituno:Function;

      public function setOverride(param1:Panel) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.rynupuka!=null)
         {
            this.rynupuka.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         this.rynupuka=param1;
         this.rynupuka.addEventListener(Event.COMPLETE,this.onComplete);
         return;
      }

      public function redraw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.palyrofyf.draw();
         return;
      }

      public function draw() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Putafyhil = null;
         var _loc2_:Panel = null;
         if(this.rynupuka!=null)
         {
            this.hepajeg(this.rynupuka);
            this.palyrofyf.draw();
            return;
         }
         _loc1_=this.vituno();
         if(this.palyrofyf==null||!(_loc1_==this.gito))
         {
            this.gito=_loc1_;
            if(this.gito!=null)
            {
               _loc2_=this.gito.nokociqoc(this.gs_);
               this.soduw=new Likalet(this.gs_);
            }
            else
            {
               _loc2_=this.soduw;
            }
            this.hepajeg(_loc2_);
         }
         if(this.palyrofyf)
         {
            this.palyrofyf.draw();
         }
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.rynupuka!=null)
         {
            this.rynupuka.removeEventListener(Event.COMPLETE,this.onComplete);
            this.rynupuka=null;
         }
         this.hepajeg(null);
         this.draw();
         return;
      }

      public function hepajeg(param1:Panel) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1!=this.palyrofyf)
         {
            this.palyrofyf=param1;
         }
         return;
      }

      private function gebeki() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.palyrofyf is Rerapipy)
         {
            this.palyrofyf.x=(this.w_-this.palyrofyf.width)*0.5;
            this.palyrofyf.y=8;
         }
         else
         {
            this.palyrofyf.x=6;
            this.palyrofyf.y=8;
         }
         addChild(this.palyrofyf);
         return;
      }
   }

}