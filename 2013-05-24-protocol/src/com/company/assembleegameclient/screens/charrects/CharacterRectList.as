package com.company.assembleegameclient.screens.charrects
{
   import flash.display.Sprite;
   import fulaw.Vihekivuc;
   import hotewa.Baqifa;
   import kabam.rotmg.assets.services.Cafe;
   import tulunyno.Hugyqufyq;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.events.Event;
   import com.company.assembleegameclient.appengine.Lycuhej;
   import jag.Giq;
   import kyco.Nun;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;


   public class CharacterRectList extends Sprite
   {
      public function CharacterRectList() {
         var _loc5_:SavedCharacter = null;
         var _loc6_:BuyCharacterRect = null;
         var _loc7_:Jimi = null;
         var _loc8_:Lycuhej = null;
         var _loc9_:CurrentCharacterRect = null;
         var _loc10_:* = 0;
         var _loc11_:CreateNewCharacterRect = null;
         super();
         var _loc1_:Nun = Giq.kid();
         this.classes=_loc1_.getInstance(Vihekivuc);
         this.model=_loc1_.getInstance(Baqifa);
         this.assetFactory=_loc1_.getInstance(Cafe);
         this.newCharacter=new Hugyqufyq();
         this.buyCharacterSlot=new Hugyqufyq();
         var _loc2_:String = this.model.getName();
         var _loc3_:* = 4;
         var _loc4_:Vector.<SavedCharacter> = this.model.hidife();
         for each (_loc5_ in _loc4_)
         {
            _loc7_=this.classes.lyt(_loc5_.objectType());
            _loc8_=this.model.gudajaw()[_loc5_.objectType()];
            _loc9_=new CurrentCharacterRect(_loc2_,_loc7_,_loc5_,_loc8_);
            _loc9_.setIcon(this.getIcon(_loc5_));
            _loc9_.y=_loc3_;
            addChild(_loc9_);
            _loc3_=_loc3_+(CharacterRect.HEIGHT+4);
         }
         if(this.model.hasAvailableCharSlot())
         {
            _loc10_=0;
            while(_loc10_<this.model.nygec())
            {
               _loc11_=new CreateNewCharacterRect(this.model);
               _loc11_.addEventListener(MouseEvent.MOUSE_DOWN,this.onNewChar);
               _loc11_.y=_loc3_;
               addChild(_loc11_);
               _loc3_=_loc3_+(CharacterRect.HEIGHT+4);
               _loc10_++;
            }
         }
         _loc6_=new BuyCharacterRect(this.model);
         _loc6_.addEventListener(MouseEvent.MOUSE_DOWN,this.onBuyCharSlot);
         _loc6_.y=_loc3_;
         addChild(_loc6_);
         return;
      }

      private var classes:Vihekivuc;

      private var model:Baqifa;

      private var assetFactory:Cafe;

      public var newCharacter:Hugyqufyq;

      public var buyCharacterSlot:Hugyqufyq;

      private function getIcon(param1:SavedCharacter) : DisplayObject {
         var _loc2_:Jimi = this.classes.lyt(param1.objectType());
         var _loc3_:Dasin = (_loc2_.socucu.sek(param1.skinType()))||(_loc2_.socucu.mucosahuh());
         var _loc4_:BitmapData = this.assetFactory.makeIcon(_loc3_.ladewavaq,100,param1.tex1(),param1.tex2());
         return new Bitmap(_loc4_);
      }

      private function onNewChar(param1:Event) : void {
         this.newCharacter.dispatch();
         return;
      }

      private function onBuyCharSlot(param1:Event) : void {
         this.buyCharacterSlot.dispatch(this.model.kut());
         return;
      }
   }

}