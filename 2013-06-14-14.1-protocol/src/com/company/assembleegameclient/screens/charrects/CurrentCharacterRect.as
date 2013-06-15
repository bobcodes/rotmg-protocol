package com.company.assembleegameclient.screens.charrects
{
   import mavew.MyPlayerToolTip;
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.appengine.Zef;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import poho.Dywygave;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.Cinihel;
   import com.company.rotmg.graphics.DeleteXGraphic;
   import narosucam.Hoqak;


   public class CurrentCharacterRect extends CharacterRect
   {
      public function CurrentCharacterRect(param1:String, param2:Dywygave, param3:SavedCharacter, param4:Zef) {
         this.myPlayerToolTipFactory=new MyPlayerToolTipFactory();
         super();
         this.charName=param1;
         this.charType=param2;
         this.char=param3;
         this.charStats=param4;
         var _loc5_:String = param2.name;
         var _loc6_:int = param3.cuho.Level;
         super.className=new Kybidu().setParams(Vibemod.kuwis,
            {
               className:_loc5_,
               level:_loc6_
            }
         );
         super.color=6052956;
         super.overColor=8355711;
         super.init();
         this.makeTagline();
         this.makeDeleteButton();
         this.addEventListeners();
         return;
      }

      private static var toolTip_:MyPlayerToolTip = null;

      public const selected:Qanyduk = new Qanyduk();

      public const deleteCharacter:Qanyduk = new Qanyduk();

      public const showToolTip:Qanyduk = new Qanyduk(Sprite);

      public const hideTooltip:Qanyduk = new Qanyduk();

      public var charName:String;

      public var charStats:Zef;

      public var char:SavedCharacter;

      public var myPlayerToolTipFactory:MyPlayerToolTipFactory;

      private var charType:Dywygave;

      private var deleteButton:Sprite;

      private var icon:DisplayObject;

      private function addEventListeners() : void {
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         selectContainer.addEventListener(MouseEvent.CLICK,this.onSelect);
         this.deleteButton.addEventListener(MouseEvent.CLICK,this.onDelete);
         return;
      }

      private function onSelect(param1:MouseEvent) : void {
         this.selected.dispatch(this.char);
         return;
      }

      private function onDelete(param1:MouseEvent) : void {
         this.deleteCharacter.dispatch(this.char);
         return;
      }

      public function setIcon(param1:DisplayObject) : void {
         this.icon=param1;
         this.icon.x=CharacterRectConstants.ICON_POS_X;
         this.icon.y=CharacterRectConstants.ICON_POS_Y;
         return;
      }

      private function makeTagline() : void {
         if(this.getNextStarFame()>0)
         {
            super.makeTaglineIcon();
            super.makeTaglineText(new Kybidu().setParams(Vibemod.fygi,
               {
                  fame:this.char.fame(),
                  nextStarFame:this.getNextStarFame()
               }
            ));
            taglineText.x=taglineText.x+taglineIcon.width;
         }
         return;
      }

      private function getNextStarFame() : int {
         return Cinihel.nextStarFame(this.charStats==null?0:this.charStats.lysatul(),this.char.fame());
      }

      private function makeDeleteButton() : void {
         this.deleteButton=new DeleteXGraphic();
         this.deleteButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onDeleteDown);
         this.deleteButton.x=WIDTH-40;
         this.deleteButton.y=(HEIGHT-this.deleteButton.height)*0.5;
         addChild(this.deleteButton);
         return;
      }

      override protected function onMouseOver(param1:MouseEvent) : void {
         super.onMouseOver(param1);
         this.removeToolTip();
         toolTip_=this.myPlayerToolTipFactory.create(this.charName,this.char.cuho,this.charStats);
         toolTip_.zafu();
         this.showToolTip.dispatch(toolTip_);
         return;
      }

      override protected function onRollOut(param1:MouseEvent) : void {
         super.onRollOut(param1);
         this.removeToolTip();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         this.removeToolTip();
         return;
      }

      private function removeToolTip() : void {
         this.hideTooltip.dispatch();
         return;
      }

      private function onDeleteDown(param1:MouseEvent) : void {
         param1.stopImmediatePropagation();
         dispatchEvent(new Hoqak(this.char));
         return;
      }
   }

}