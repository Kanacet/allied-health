import React, { Component } from 'react';
import SurgeryGroup from './SurgeryGroup';

class SurgeryGroupList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      groups: [],
      surgeries: [],
      selectedGroupId: null,
    };
    this.getData = this.getData.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  getData() {
    fetch('http://localhost:3000/api/v1/surgery_groups.json')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} ($response.statusText)`,
          error = new Error(errorMessage);
        throw(error);
      }
    })
      .then(response => response.json())
      .then(body => {
        this.setState({groups: body});
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getData();
  }

  handleClick(surgery_group_id) {
    fetch(`http://localhost:3000/api/v1/surgery_groups/${surgery_group_id}/surgeries.json`)
      .then(response => {
        if (response.ok) {
          return response;
        } else {
          let errorMessage = `${response.status} ($response.statusText)`,
            error = new Error(errorMessage);
          throw(error);
        }
      })
      .then(response => response.json())
      .then(body => {
        this.setState({selectedGroupId: surgery_group_id, surgeries: body});
      })
      .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let selectedGroupId = this.state.selectedGroupId
    let newGroups = this.state.groups.map((group) => {
      let surgeries = [];
      if (group.id === selectedGroupId) {
        surgeries = this.state.surgeries
      }
      let groupClick = () => { this.handleClick(group.id) };
      return (
        <div className="small-4 columns" id="group_name">
        <SurgeryGroup
          id={group.id}
          key={group.id}
          name={group.group}
          selectGroup={groupClick}
          surgeries={surgeries}
        />
        </div>
      )
    });

    return(
      <div className="row">
        {newGroups}
      </div>
    )
  }
};

export default SurgeryGroupList;
