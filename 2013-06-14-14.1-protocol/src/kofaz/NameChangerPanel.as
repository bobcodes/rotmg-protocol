package kofaz
{
   import fytalis.Panel;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;
   import bemav.Telir;
   import komi.Vibemod;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.util.Currency;
   import jediwip.Kybidu;
   import com.company.assembleegameclient.ui.Tivinu;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.ui.RankText;
   import jediwip.Tunyhazo;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;


   public class NameChangerPanel extends Panel
   {
      public function NameChangerPanel(param1:GameSprite, param2:int) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Player = null;
         var _loc4_:String = null;
         this.chooseName=new Qanyduk();
         super(param1);
         if(this.rodyr())
         {
            _loc3_=gs_.map.player_;
            this.cuc=_loc3_.dihap;
            _loc4_=this.wyjam();
            if(this.cuc)
            {
               this.qiveto(_loc4_);
            }
            else
            {
               if(_loc3_.numStars_<param2)
               {
                  this.mugu(param2);
               }
               else
               {
                  this.roginut();
               }
            }
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         return;
      }

      public var chooseName:Qanyduk;

      public var cuc:Boolean;

      private var gehivyky:Guzowoja;

      private var namaqaloj:Sprite;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.namaqaloj)
         {
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function rodyr() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (gs_.map)&&(gs_.map.player_);
      }

      private function wyjam() : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = null;
         _loc1_=gs_.model.getName();
         this.gehivyky=new Guzowoja().setSize(18).setColor(16777215).setTextWidth(WIDTH);
         this.gehivyky.setBold(true).setWordWrap(true).setMultiLine(true).setHorizontalAlign(TextFormatAlign.CENTER);
         this.gehivyky.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      private function qiveto(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.gehivyky.setStringBuilder(this.wud(param1));
         this.gehivyky.y=0;
         addChild(this.gehivyky);
         var _loc2_:Telir = new Telir(Vibemod.cyjuse,16,RotmgParameters.juf,Currency.win);
         _loc2_.zesi.addOnce(this.cume);
         this.namaqaloj=_loc2_;
         addChild(this.namaqaloj);
         this.hupydyw();
         return;
      }

      private function cume() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.namaqaloj.x=WIDTH/2-this.namaqaloj.width/2;
         this.namaqaloj.y=HEIGHT-this.namaqaloj.height/2-17;
         return;
      }

      private function roginut() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gehivyky.setStringBuilder(new Kybidu().setParams(Vibemod.cedytid));
         this.gehivyky.y=6;
         addChild(this.gehivyky);
         var _loc1_:Tivinu = new Tivinu(16,Vibemod.cezagivef);
         _loc1_.textChanged.addOnce(this.byfenapy);
         this.namaqaloj=_loc1_;
         addChild(this.namaqaloj);
         this.hupydyw();
         return;
      }

      private function byfenapy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.namaqaloj.x=WIDTH/2-this.namaqaloj.width/2;
         this.namaqaloj.y=HEIGHT-this.namaqaloj.height-4;
         return;
      }

      private function hupydyw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.namaqaloj.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         return;
      }

      private function mugu(param1:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Sprite = null;
         var _loc3_:Guzowoja = null;
         var _loc4_:Sprite = null;
         this.gehivyky.setStringBuilder(new Kybidu().setParams(Vibemod.cedytid));
         addChild(this.gehivyky);
         _loc2_=new Sprite();
         _loc3_=new Guzowoja().setSize(16).setColor(16777215);
         _loc3_.setBold(true);
         _loc3_.setStringBuilder(new Kybidu().setParams(Vibemod.zyq));
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
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function wud(param1:String) : Tunyhazo {
         return new Kybidu().setParams(Vibemod.guf,{name:param1});
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==RotmgParameters.data_.interact&&stage.focus==null)
         {
            this.muvu();
         }
         return;
      }

      private function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.muvu();
         return;
      }

      private function muvu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.chooseName.dispatch();
         return;
      }

      public function fyty(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gehivyky.setStringBuilder(this.wud(param1));
         this.gehivyky.y=0;
         return;
      }
   }

}