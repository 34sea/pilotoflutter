class OperationListModel {
  final String? ch_short_name;
  final String? me_to_pos_loctype;
  final String? che_carry1;
  final String? iu_freight_kind;
  final String? type;
  final String? ch_carry1;
  final String? unit;
  final String? che_fetch;
  final String? from;
  final String? to;
  final String? che_carry;
  final String? me_t_carry_complete;
  final String? et_description;
  final String? che_put_login_name;
  final String? cv_visit_gkey;
  final String? iu_category;  
  final String? me_t_carry_complete_hour;
  final String? me_fm_pos_loctype;
  final String? iu_is_oog;
  final String? che_fetch_login_name;
  final String? cv_visit_id;

  OperationListModel({
    this.ch_short_name,
    this.me_to_pos_loctype,
    this.che_carry1,
    this.iu_freight_kind,
    this.type,
    this.ch_carry1,
    this.unit,
    this.che_fetch,
    this.from,
    this.to,
    this.che_carry,
    this.me_t_carry_complete,
    this.et_description,
    this.che_put_login_name,
    this.cv_visit_id,
    this.iu_category,
    this.me_t_carry_complete_hour,
    this.me_fm_pos_loctype,
    this.iu_is_oog,
    this.che_fetch_login_name,
    this.cv_visit_gkey,
  });

  factory OperationListModel.fromJson(Map<String, dynamic> json) {
    return OperationListModel(
      ch_short_name: json['ch_short_name'],
      me_to_pos_loctype: json['me_to_pos_loctype'],
      che_carry1: json['che_carry1'],
      iu_freight_kind: json['iu_freight_kind'],
      type: json['type'],
      ch_carry1: json['ch_carry1'],
      unit: json['unit'],
      che_fetch: json['che_fetch'],
      from: json['from'],
      to: json['to'],
      che_carry: json['che_carry'],
      me_t_carry_complete: json['me_t_carry_complete'],
      et_description: json['et_description'],
      che_put_login_name: json['che_put_login_name'],
      cv_visit_id: json['cv_visit_id'],
      iu_category: json['iu_category'],
      me_t_carry_complete_hour: json['me_t_carry_complete_hour'],
      me_fm_pos_loctype: json['me_fm_pos_loctype'],
      iu_is_oog: json['iu_is_oog'],
      che_fetch_login_name: json['che_fetch_login_name'],
      cv_visit_gkey: json['cv_visit_gkey'],
    );
    // return OperationListModel(
    //   ch_short_name: json['ch_short_name'],
    //   me_to_pos_loctype: json['me_to_pos_loctype'],
    //   iu_freight_kind: json['iu_freight_kind'],
    //   me_t_carry_complete: json['me_t_carry_complete'],
    //   et_description: json['et_description'],
    //   che_put_login_name: json['che_put_login_name'],
    //   cv_visit_id: json['cv_visit_id'],
    //   iu_category: json['iu_category'],
    //   me_t_carry_complete_hour: json['me_t_carry_complete_hour'],
    //   me_fm_pos_loctype: json['me_fm_pos_loctype'],
    //   iu_is_oog: json['iu_is_oog'],
    //   che_fetch_login_name: json['che_fetch_login_name'],
    //   cv_visit_gkey: json['cv_visit_gkey'],
    // );
  }
}
