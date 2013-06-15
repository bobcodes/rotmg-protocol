package com.company.assembleegameclient.game
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.map.Remo;
   import lemugo.Wokycuku;
   import wenono.Tewefem;
   import com.company.assembleegameclient.map.Qawosiwi;
   import ducojoryn.Zim;
   import com.company.assembleegameclient.objects.GameObject;
   import wipivyv.Syvaf;


   public class Pajemiz extends Sprite
   {
      public function Pajemiz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.moveRecords_=new Dyluhadaz();
         this.camera_=new Qawosiwi();
         super();
         return;
      }

      public const closed:Qanyduk = new Qanyduk();

      public var isEditor:Boolean;

      public var tutorial_:Tutorial;

      public var mui_:Tewezezu;

      public var lastUpdate_:int;

      public var moveRecords_:Dyluhadaz;

      public var map:Remo;

      public var model:Wokycuku;

      public var hudView:Tewefem;

      public var camera_:Qawosiwi;

      public var gsc_:Zim;

      public function initialize() : void {
         return;
      }

      public function setFocus(param1:GameObject) : void {
         return;
      }

      public function applyMapInfo(param1:Syvaf) : void {
         return;
      }

      public function evalIsNotInCombatMapArea() : Boolean {
         return false;
      }
   }

}