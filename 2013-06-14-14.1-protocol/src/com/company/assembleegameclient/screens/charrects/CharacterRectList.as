package com.company.assembleegameclient.screens.charrects
{
   import flash.display.Sprite;
   import poho.Kyhy;
   import lemugo.Wokycuku;
   import kabam.rotmg.assets.services.Bytedif;
   import mukyrosu.Qanyduk;
   import flash.display.DisplayObject;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import poho.Dywygave;
   import poho.Pom;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.events.Event;
   import com.company.assembleegameclient.appengine.Zef;
   import sijizoh.Duq;
   import dyca.Mes;
   import __AS3__.vec.Vector;
   import flash.events.MouseEvent;


   public class CharacterRectList extends Sprite
   {
      public function CharacterRectList() {
         var _loc5_:SavedCharacter = null;
         var _loc6_:BuyCharacterRect = null;
         var _loc7_:Dywygave = null;
         var _loc8_:Zef = null;
         var _loc9_:CurrentCharacterRect = null;
         var _loc10_:* = 0;
         var _loc11_:CreateNewCharacterRect = null;
         super();
         var _loc1_:Mes = Duq.pamazo();
         this.classes=_loc1_.getInstance(Kyhy);
         this.model=_loc1_.getInstance(Wokycuku);
         this.assetFactory=_loc1_.getInstance(Bytedif);
         this.newCharacter=new Qanyduk();
         this.buyCharacterSlot=new Qanyduk();
         var _loc2_:String = this.model.getName();
         var _loc3_:* = 4;
         var _loc4_:Vector.<SavedCharacter> = this.model.zycelady();
         for each (_loc5_ in _loc4_)
         {
            _loc7_=this.classes.gug(_loc5_.objectType());
            _loc8_=this.model.suzu()[_loc5_.objectType()];
            _loc9_=new CurrentCharacterRect(_loc2_,_loc7_,_loc5_,_loc8_);
            _loc9_.setIcon(this.getIcon(_loc5_));
            _loc9_.y=_loc3_;
            addChild(_loc9_);
            _loc3_=_loc3_+(CharacterRect.HEIGHT+4);
         }
         if(this.model.hasAvailableCharSlot())
         {
            _loc10_=0;
            while(_loc10_<this.model.biq())
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

      private var classes:Kyhy;

      private var model:Wokycuku;

      private var assetFactory:Bytedif;

      public var newCharacter:Qanyduk;

      public var buyCharacterSlot:Qanyduk;

      private function getIcon(param1:SavedCharacter) : DisplayObject {
         var _loc2_:Dywygave = this.classes.gug(param1.objectType());
         var _loc3_:Pom = (_loc2_.sybiwu.vobydozid(param1.skinType()))||(_loc2_.sybiwu.syret());
         var _loc4_:BitmapData = this.assetFactory.makeIcon(_loc3_.fegotu,100,param1.tex1(),param1.tex2());
         return new Bitmap(_loc4_);
      }

      private function onNewChar(param1:Event) : void {
         this.newCharacter.dispatch();
         return;
      }

      private function onBuyCharSlot(param1:Event) : void {
         this.buyCharacterSlot.dispatch(this.model.pyg());
         return;
      }
   }

}