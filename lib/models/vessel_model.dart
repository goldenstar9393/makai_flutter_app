import 'package:cloud_firestore/cloud_firestore.dart';

class Vessel {
  final String userID;
  String vesselChatUserID;
  final String vesselID;
  final String vesselName;
  final String description;
  final List thingsAllowed;
  final num rating;
  final num ratingCount;
  final List prices;
  final num passengerCapacity;
  final num availableSeats;
  final List durations;
  final List images;
  final bool disabledByAdmin;
  final bool approved;
  bool licensed;
  bool captainLicensed;
  final Timestamp disabledUntil;
  final GeoPoint geoPoint;
  final String address;
  final String shortAddress;
  final num length;
  final num cabins;
  final num bathrooms;
  final num crewSize;
  final num speed;
  final String builder;
  final String vesselType;
  final String yachtType;
  final String fishingVesselType;
  final String fishingType;
  final String cancellationPolicy;
  final List features;
  final List fishingSpecies;
  final List fishingTechniques;
  final List monday;
  final List tuesday;
  final List wednesday;
  final List thursday;
  final List friday;
  final List saturday;
  final List sunday;

  Vessel({
    this.userID,
    this.vesselChatUserID,
    this.vesselID,
    this.vesselName,
    this.description,
    this.thingsAllowed,
    this.rating,
    this.ratingCount,
    this.prices,
    this.passengerCapacity,
    this.availableSeats,
    this.durations,
    this.images,
    this.disabledByAdmin,
    this.approved,
    this.licensed,
    this.captainLicensed,
    this.disabledUntil,
    this.geoPoint,
    this.address,
    this.shortAddress,
    this.length,
    this.cabins,
    this.bathrooms,
    this.crewSize,
    this.speed,
    this.builder,
    this.vesselType,
    this.yachtType,
    this.fishingVesselType,
    this.fishingType,
    this.cancellationPolicy,
    this.features,
    this.fishingSpecies,
    this.fishingTechniques,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
    this.sunday,
  });

  factory Vessel.fromDocument(DocumentSnapshot doc) {
    try {
      Map<String, dynamic> snapshot = doc.data();

      return Vessel(
        userID: snapshot.containsKey('userID') ? doc.get('userID') : '',
        vesselChatUserID: snapshot.containsKey('vesselChatUserID')
            ? doc.get('vesselChatUserID')
            : snapshot.containsKey('userID')
                ? doc.get('userID')
                : '',
        vesselID: snapshot.containsKey('vesselID') ? doc.get('vesselID') : '',
        vesselName: snapshot.containsKey('vesselName') ? doc.get('vesselName') : '',
        description: snapshot.containsKey('description') ? doc.get('description') : '',
        thingsAllowed: snapshot.containsKey('thingsAllowed') ? doc.get('thingsAllowed') : [],
        rating: snapshot.containsKey('rating') ? doc.get('rating') : 0,
        ratingCount: snapshot.containsKey('ratingCount') ? doc.get('ratingCount') : 0,
        prices: snapshot.containsKey('prices') ? doc.get('prices') : [0],
        passengerCapacity: snapshot.containsKey('passengerCapacity') ? doc.get('passengerCapacity') : 0,
        availableSeats: snapshot.containsKey('availableSeats') ? doc.get('availableSeats') : 0,
        durations: snapshot.containsKey('durations') ? doc.get('durations') : [0],
        images: snapshot.containsKey('images') ? doc.get('images') : [],
        disabledByAdmin: snapshot.containsKey('disabledByAdmin') ? doc.get('disabledByAdmin') : false,
        approved: snapshot.containsKey('approved') ? doc.get('approved') : false,
        licensed: snapshot.containsKey('licensed') ? doc.get('licensed') : false,
        captainLicensed: snapshot.containsKey('captainLicensed') ? doc.get('captainLicensed') : false,
        disabledUntil: snapshot.containsKey('disabledUntil') ? doc.get('disabledUntil') : null,
        geoPoint: snapshot.containsKey('geoPoint') ? doc.get('geoPoint') : GeoPoint(25.76, -80.19),
        address: snapshot.containsKey('address') ? doc.get('address') : '',
        shortAddress: snapshot.containsKey('shortAddress') ? doc.get('shortAddress') : '',
        length: snapshot.containsKey('length') ? doc.get('length') : 0,
        cabins: snapshot.containsKey('cabins') ? doc.get('cabins') : 0,
        bathrooms: snapshot.containsKey('bathrooms') ? doc.get('bathrooms') : 0,
        crewSize: snapshot.containsKey('crewSize') ? doc.get('crewSize') : 0,
        speed: snapshot.containsKey('speed') ? doc.get('speed') : 0,
        builder: snapshot.containsKey('builder') ? doc.get('builder') : 'Any',
        vesselType: snapshot.containsKey('vesselType') ? doc.get('vesselType') : 'Yacht',
        yachtType: snapshot.containsKey('yachtType') ? doc.get('yachtType') : 'Motor',
        fishingVesselType: snapshot.containsKey('fishingVesselType') ? doc.get('fishingVesselType') : 'Air',
        fishingType: snapshot.containsKey('fishingType') ? doc.get('fishingType') : 'Backcountry',
        cancellationPolicy: snapshot.containsKey('cancellationPolicy') ? doc.get('cancellationPolicy') : 'Flexible',
        features: snapshot.containsKey('features') ? doc.get('features') : [],
        fishingSpecies: snapshot.containsKey('fishingSpecies') ? doc.get('fishingSpecies') : [],
        fishingTechniques: snapshot.containsKey('fishingTechniques') ? doc.get('fishingTechniques') : [],
        monday: snapshot.containsKey('monday') ? doc.get('monday') : [],
        tuesday: snapshot.containsKey('tuesday') ? doc.get('tuesday') : [],
        wednesday: snapshot.containsKey('wednesday') ? doc.get('wednesday') : [],
        thursday: snapshot.containsKey('thursday') ? doc.get('thursday') : [],
        friday: snapshot.containsKey('friday') ? doc.get('friday') : [],
        saturday: snapshot.containsKey('saturday') ? doc.get('saturday') : [],
        sunday: snapshot.containsKey('sunday') ? doc.get('sunday') : [],
      );
    } catch (e) {
      print('****** VESSEL MODEL ******');
      print(e);
      return null;
    }
  }
}
