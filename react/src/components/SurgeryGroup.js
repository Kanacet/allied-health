import React from 'react';
import Surgery from './Surgery';

const SurgeryGroup = (props) => {
  let surgeries = props.surgeries.map((surgery) => {
    console.log(surgery)
    return (
      <div className="surgery_list">
      <Surgery
        id={surgery.id}
        key={surgery.id}
        name={surgery.name}
        groupId={surgery.surgery_group_id}
      />
      </div>
    )
  })
  return (
    <div>
      <h4 onClick={props.selectGroup}>{props.name}</h4>
      <ul>
        {surgeries}
      </ul>
    </div>
  )
};

export default SurgeryGroup;
